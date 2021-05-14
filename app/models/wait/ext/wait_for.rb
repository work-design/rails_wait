module Wait
  module Ext::WaitFor
    extend ActiveSupport::Concern

    included do
      has_many :wait_lists, class_name: 'Wait::WaitList', as: :wait_for
    end

  end
end
