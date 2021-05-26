module Wait
  module Model::Taxon
    extend ActiveSupport::Concern

    included do
      attribute :name, :string

      belongs_to :organ, optional: true
      has_many :lists
    end


  end
end
