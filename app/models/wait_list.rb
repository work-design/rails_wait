class WaitList < ApplicationRecord
  include RailsWait::WaitList
end unless defined? WaitList
