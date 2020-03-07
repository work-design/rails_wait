module RailsWait::WaitItem
  extend ActiveSupport::Concern
  included do
    acts_as_list
    attribute :state, :string
    attribute :position, :integer

    belongs_to :order
    belongs_to :user
    belongs_to :wait_list, counter_cache: true
  end


end
