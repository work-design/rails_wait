module RailsWait::WaitItem
  extend ActiveSupport::Concern
  included do
    attribute :state, :string


    belongs_to :order
    belongs_to :user
    belongs_to :wait_list, counter_cache: true
  end


end
