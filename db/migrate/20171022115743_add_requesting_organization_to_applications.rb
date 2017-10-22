class AddRequestingOrganizationToApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :requesting_organization, :string
  end
end
