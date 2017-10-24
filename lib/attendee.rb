class Attendee
  attr_reader :reg_date,
              :first_name,
              :last_name,
              :email_address,
              :home_phone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(attribute)
    @id            = attribute[:id]
    @reg_date      = attribute[:reg_date]
    @first_name    = attribute[:first_name]
    @last_name     = attribute[:last_name]
    @email_address = attribute[:email_address]
    @home_phone    = attribute[:home_phone]
    @street        = attribute[:street]
    @city          = attribute[:city]
    @state         = attribute[:state]
    @zipcode       = attribute[:zipcode]
  end
end
