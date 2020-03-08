module RailsWait::WaitItem
  extend ActiveSupport::Concern
  included do
    acts_as_list scope: :wait_list_id
    attribute :state, :string
    attribute :position, :integer

    belongs_to :user
    belongs_to :wait_list, counter_cache: true
  end


end
