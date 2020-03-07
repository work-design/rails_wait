module RailsWait::WaitList
  extend ActiveSupport::Concern
  included do
    attribute :state, :string
    attribute :start_at, :datetime
    attribute :finish_at, :datetime
    attribute :wait_items_count, :integer, default: 0

    belongs_to :address
    belongs_to :wait_taxon, optional: true
    belongs_to :organ, optional: true
    has_many :wait_items, dependent: :destroy
  end

end
