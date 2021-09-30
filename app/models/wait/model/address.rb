module Wait
  module Model::Address
    extend ActiveSupport::Concern

    included do
      has_many :wait_lists, class_name: 'Wait::List', dependent: :destroy
    end

  end
end
