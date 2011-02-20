class AddDefaultAdmin < ActiveRecord::Migration
  def self.up
    unless Admin.find :first
      Admin.create do |u|
        u.email = "danvalencia@gmail.com"
        u.password = "password"
        u.password_confirmation = "password"
      end
    end
  end

  def self.down
    Admin.delete_all
  end
end
