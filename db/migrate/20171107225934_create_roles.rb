# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name
    end
  end
end
