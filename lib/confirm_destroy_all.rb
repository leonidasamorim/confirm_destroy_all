require "confirm_destroy_all/version"
require "confirm_destroy_all/railtie" if defined?(Rails)

module ConfirmDestroyAll
  def destroy_all
    confirm_input = get_confirmation_input # Chama o método de entrada
    return unless confirm_input == 'yes'

    super
  end

  private

  def get_confirmation_input
    puts "You are in the #{Rails.env.upcase} environment:"
    puts "Are you sure you want to destroy all records for #{self.name}? Type 'yes' to proceed:"
    gets.chomp
  end
end

ActiveRecord::Relation.prepend(ConfirmDestroyAll)
