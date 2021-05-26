module Wait
  module Model::List
    extend ActiveSupport::Concern

    included do
      attribute :state, :string
      attribute :start_at, :datetime
      attribute :finish_at, :datetime
      attribute :items_count, :integer, default: 0

      belongs_to :address
      belongs_to :wait_for, polymorphic: true, optional: true
      belongs_to :taxon, optional: true
      belongs_to :organ, optional: true
      has_many :items, dependent: :destroy
    end

  end
end
