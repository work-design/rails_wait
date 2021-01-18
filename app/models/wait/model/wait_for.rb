module Wait
  module Model::WaitFor
    extend ActiveSupport::Concern

    included do
      has_many :wait_lists, as: :wait_for
    end

  end
end
