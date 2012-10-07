class User < ActiveRecord::Base
  STATES = [["Alabama", "AL"],
            ["Alaska", "AK"],
            ["Arizona", "AZ"],
            ["Arkansas", "AR"],
            ["California", "CA"],
            ["Colorado", "CO"],
            ["Connecticut", "CT"],
            ["Delaware", "DE"],
            ["Florida", "FL"],
            ["Georgia", "GA"],
            ["Hawaii", "HI"],
            ["Idaho", "ID"],
            ["Illinois", "IL"],
            ["Indiana", "IN"],
            ["Iowa", "IA"],
            ["Kansas", "KS"],
            ["Kentucky", "KY"],
            ["Louisiana", "LA"],
            ["Maine", "ME"],
            ["Maryland", "MD"],
            ["Massachusetts", "MA"],
            ["Michigan", "MI"],
            ["Minnesota", "MN"],
            ["Mississippi", "MS"],
            ["Missouri", "MO"],
            ["Montana", "MT"],
            ["Nebraska", "NE"],
            ["Nevada", "NV"],
            ["New Hampshire", "NH"],
            ["New Jersey", "NJ"],
            ["New Mexico", "NM"],
            ["New York", "NY"],
            ["North Carolina", "NC"],
            ["North Dakota", "ND"],
            ["Ohio", "OH"],
            ["Oklahoma", "OK"],
            ["Oregon", "OR"],
            ["Pennsylvania", "PA"],
            ["Rhode Island", "RI"],
            ["South Carolina", "SC"],
            ["South Dakota", "SD"],
            ["Tennessee", "TN"],
            ["Texas", "TX"],
            ["Utah", "UT"],
            ["Vermont", "VT"],
            ["Virginia", "VA"],
            ["Washington", "WA"],
            ["West Virginia", "WV"],
            ["Wisconsin", "WI"],
            ["Wyoming", "WY"]]

  attr_accessible :name, :email, :address1, :address2, :state, :zip_code
  validates :name,     presence: true
  validates :email,    presence: true
  validates :address1, presence: true
  validates :state,    presence: true
  validates :zip_code, presence: true
  validate :validate_email_address

  def validate_email_address
    errors.add(:email, :not_an_email) unless /@/ =~ email
    errors.add(:base,  :not_an_email) unless /@/ =~ email
  end
end
