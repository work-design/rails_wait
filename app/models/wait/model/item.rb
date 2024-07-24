module Wait
  module Model::Item
    extend ActiveSupport::Concern

    included do
      positioned on: :list_id

      attribute :state, :string
      attribute :position, :integer

      belongs_to :user
      belongs_to :list, counter_cache: true

      after_save_commit :to_notice, if: -> { saved_change_to_volunteer_id? && volunteer }
      acts_as_notify(
        :default,
        only: [:position],
        methods: [:state_i18n, :address]
      )
    end

    def address
      "#{list.address.content}"
    end

    def to_notice
      to_notification(
        receiver: user,
        title: '您的快递已备好',
        body: '请即刻出发前往领取',
        link: url_helpers.my_wait_item_url(id),
        verbose: true
      )
    end

  end
end
