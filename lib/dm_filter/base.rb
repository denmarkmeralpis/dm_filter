module DmFilter
   module Base
      extend ActiveSupport::Concern
      module ClassMethods

         def dm_get(options)
            d = options[:from]
            t = options[:to]
            column_date = options[:column_date]
            day = options[:duration]

            column_date = column_date.blank? ? 'created_at' : column_date
            d = d.blank? ? Time.zone.now : d.to_date
            t = t.blank? ? Time.zone.now : t.to_date

            case day
            when "all"
               self.all
            when "today"
               self.where(column_date => d.beginning_of_day..t.end_of_day)
            when "yesterday"
               self.where(column_date => d.yesterday.beginning_of_day..t.yesterday.end_of_day)
            when "this_week"
               self.where(column_date => d.beginning_of_week..t.end_of_week)
            when "this_month"
               self.where(column_date => d.beginning_of_month..t.end_of_month)
            when "last_month"
               self.where(column_date => d.last_month.beginning_of_month..t.last_month.end_of_month)
            when "period"
               self.where(column_date => d.beginning_of_day..t.end_of_day)
            else
               self.all
            end
         end
      end
      extend ClassMethods
   end
end
