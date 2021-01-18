module Wait
  module Model::Waiting
    extend ActiveSupport::Concern

    included do
      belongs_to :wait_item, optional: true
    end

  end
end
