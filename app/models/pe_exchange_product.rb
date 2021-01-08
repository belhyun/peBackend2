class PeExchangeProduct < ApplicationRecord

  belongs_to :pe_product

  def readable_object(hash = nil)
    ret = {}

    ret = {
        :id => self.id,
        :groupId => self.group_id,
        :order => self.order,
        :productId => self.pe_product_id,
        :productType => self.price_type,
        :price => self.price,
        :limit => self.limit,
        :status => self.status,
    }

    if hash && hash[:include]

      if hash[:include].include?(:pe_product)
        ret[:peProduct] = self.pe_product.readable_object
      end

    end
    ret
  end

end
