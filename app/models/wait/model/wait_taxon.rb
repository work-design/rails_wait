module Wait
  module Model::WaitTaxon
    extend ActiveSupport::Concern

    included do
      attribute :name, :string

      belongs_to :organ, optional: true
      has_many :wait_lists
    end


  end
end
