class ApplicationController < ActionController::Base

  def list_json(list, hash = nil)
    if list.respond_to? :total_count
      total_count = list.total_count
    else
      total_count = list.klass.joins(list.joins_values).where(list.where_values_hash).count
    end


    offset_value = 1, limit_value = 10
    if list.respond_to?(:offset_value) && list.respond_to?(:limit_value)
      offset_value = list.offset_value
      limit_value = list.limit_value
    end
    {
        :message     => "#{list.klass.name} list.",
        :result_code => 'success',
        :page        => (offset_value/limit_value)+1,
        :per_page    => limit_value,
        :total_count => total_count,
        list.klass.name.pluralize =>
            list.map{|obj| obj.readable_object(hash) }
    }
  end

end
