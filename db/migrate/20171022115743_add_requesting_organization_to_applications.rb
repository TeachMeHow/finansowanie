class AddRequestingOrganizationToApplications < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :requesting_organization, index: true
  end
end
