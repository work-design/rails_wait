module RailsWait::WaitItem
  extend ActiveSupport::Concern

  included do
    acts_as_list scope: :wait_list_id
    attribute :state, :string
    attribute :position, :integer

    belongs_to :user
    belongs_to :wait_list, counter_cache: true

    after_save_commit :to_notice, if: -> { saved_change_to_volunteer_id? && volunteer }
    acts_as_notify(
      :default,
      only: [:position],
      methods: [:state_i18n, :address]
    )
  end

  def address
    "#{wait_list.address.content}"
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
