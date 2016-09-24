class AddInfoToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :line1, :string
    add_column :organizations, :line2, :string
    add_column :organizations, :city, :string
    add_column :organizations, :pin, :integer
    add_column :organizations, :state, :string
    add_column :organizations, :contact_person, :string
    add_column :organizations, :mobile, :integer
  end
end
