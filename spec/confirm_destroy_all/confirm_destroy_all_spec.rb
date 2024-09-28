require 'spec_helper'
require 'active_record'
require 'confirm_destroy_all'

# Configura um banco de dados temporário para testes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

class Article < ActiveRecord::Base
end

RSpec.describe ConfirmDestroyAll do
  before(:all) do
    ActiveRecord::Migration.create_table :articles do |t|
      t.string :content
    end

    Article.create(content: 'Test 1')
    Article.create(content: 'Test 2')
  end

  after(:all) do
    ActiveRecord::Migration.drop_table :articles
  end

  describe '.destroy_all' do
    it 'confirms before destroying all records' do
      allow_any_instance_of(ConfirmDestroyAll).to receive(:get_confirmation_input).and_return('yes')

      expect { Article.destroy_all }.to change { Article.count }.by(-2)
    end

    it 'does not destroy records if confirmation is not given' do
      allow_any_instance_of(ConfirmDestroyAll).to receive(:get_confirmation_input).and_return('no')

      expect { Article.destroy_all }.not_to( 
        change do
          Article.count
        end
      )
    end
  end
end
