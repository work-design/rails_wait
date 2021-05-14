module Wait
  module Ext::Waiting
    extend ActiveSupport::Concern

    included do
      belongs_to :wait_item, class_name: 'Wait::WaitItem', optional: true
    end

  end
end
