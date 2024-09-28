require "confirm_destroy_all/version"
require "confirm_destroy_all/railtie" if defined?(Rails)

module ConfirmDestroyAll
  def destroy_all
    puts "You are in the #{Rails.env.upcase} environment:"
    puts "Are you sure you want to destroy all records for #{self.name}? Type 'yes' to proceed:"
    confirm = gets.chomp
    return unless confirm == 'yes'

    super
  end
end

ActiveRecord::Relation.prepend(ConfirmDestroyAll)
