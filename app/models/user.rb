# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :full_name, presence: true
  has_many :user_applications, dependent: :destroy
  has_many :user_organizations, dependent: :destroy
  has_many :applications, through: :user_applications, inverse_of: :users, dependent: :destroy
  has_many :organizations, -> { distinct }, through: :user_organizations, inverse_of: :users, dependent: :destroy
end
