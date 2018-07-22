require 'active_support/all'
require 'dm_filter/version'

# DmFilter
module DmFilter
  extend ActiveSupport::Concern
  # Class Method
  module ClassMethods
    def dm_get(options)
      options[:column_date] = 'created_at' unless options[:column_date].present?

      from = options[:from].blank? ? Time.current : options[:from].to_datetime
      to = options[:to].blank? ? Time.current : options[:to].to_datetime

      case options[:duration]
      when 'all'
        all
      when 'today'
        where(options[:column_date] => from.beginning_of_day..to.end_of_day)
      when 'yesterday'
        where(options[:column_date] => from.yesterday.beginning_of_day..to.yesterday.end_of_day)
      when 'this_week'
        where(options[:column_date] => from.beginning_of_week..to.end_of_week)
      when 'this_month'
        where(options[:column_date] => from.beginning_of_month..to.end_of_month)
      when 'last_month'
        where(options[:column_date] => from.last_month.beginning_of_month..to.last_month.end_of_month)
      when 'period', 'custom'
        where(options[:column_date] => from.beginning_of_day..to.end_of_day)
      else
        all
      end
    end
    extend ClassMethods
  end
end
