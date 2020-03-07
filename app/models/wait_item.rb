class WaitItem < ApplicationRecord
  include RailsWait::WaitItem
end unless defined? WaitItem
