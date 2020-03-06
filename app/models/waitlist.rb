class Waitlist < ApplicationRecord
  include RailsVip::Waitlist
end unless defined? Waitlist
