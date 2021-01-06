class PeExchangeCommon < ApplicationRecord
  has_one_attached :banner

  def readable_object(hash = nil)
    ret = {}
    # case version.to_i
    # when 1
    # end
    ret = {
        :banner => Rails.application.routes.url_helpers.url_for(self.banner),
        :interval => self.interval,
        :maintenance => self.maintenance
    }
    ret

  end

end
