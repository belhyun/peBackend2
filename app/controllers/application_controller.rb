class ApplicationController < ActionController::Base

  def list_json(list, hash = nil)
    if list.respond_to? :total_count
      total_count = list.total_count
    else
      total_count = list.klass.joins(list.joins_values).where(list.where_values_hash).count
    end


    {
        :message     => "#{list.klass.name} list.",
        :status_code => 'success',
        # :page        => (list.offset_value/list.limit_value)+1,
        # :per_page    => list.limit_value,
        :total_count => total_count,
        list.klass.name.pluralize.underscore =>
            list.map{|obj| obj.readable_object(hash) }
    }
  end

end
