class PeProduct < ApplicationRecord
  has_one_attached :image

  has_one :pe_recommend, :class_name => "PeRecommend", :dependent => :destroy
  has_one :pe_exchange_product, :class_name => "PeExchangeProduct", :dependent => :destroy

  def readable_object(hash = nil)
    ret = {}

    ret = {
        :id => self.id,
        :name => self.name,
        :productType => self.product_type,
        :cashPrice => self.cash_price,
        :coinPrice => self.coin_price,
        :image => self.image.attached? ? Rails.application.routes.url_helpers.url_for(self.image) : "",
        :description => self.description,
        :rewardType => self.reward_type,
        :rewardValue => self.reward_value,
        :alarm => self.alarm
    }
    ret
  end
end
