module RailsWait::Address
  extend ActiveSupport::Concern
  included do
    has_many :wait_lists, dependent: :destroy
  end

end
