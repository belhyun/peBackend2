class PeRecommend < ApplicationRecord

  belongs_to :pe_product

  def readable_object(hash = nil)
    ret = {}

    ret = {
        :id => self.id,
        :order => self.order,
        :productId => self.pe_product_id
    }

    if hash && hash[:include]

      if hash[:include].include?(:pe_product)
        ret[:peProduct] = self.pe_product.readable_object
      end

    end
    ret
  end
end
