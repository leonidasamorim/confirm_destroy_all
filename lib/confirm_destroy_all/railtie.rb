module ConfirmDestroyAll
  class Railtie < Rails::Railtie
    initializer "confirm_destroy_all.configure_rails_initialization" do
      ActiveRecord::Relation.prepend(ConfirmDestroyAll)
    end
  end
end
