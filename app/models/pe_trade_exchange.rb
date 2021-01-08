class PeTradeExchange < ApplicationRecord

  def readable_object(hash = nil)
    ret = {}

    ret = {
        :id => self.id,
        :order => self.order,
        :targetType => self.target_type,
        :targetValue => self.target_value,
        :needType => self.need_type,
        :needValue => self.need_value
    }
    ret
  end
end
