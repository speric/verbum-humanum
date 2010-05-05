class ReadingPlan < ActiveRecord::Base
  validates_presence_of :creator
  
  def pages_per_day
    ((page_count / (duration_count * duration_multiplier).to_f).to_f).round
  end
  
  def duration
    case self.duration_multiplier
      when 1
        'day'
      when 7
        'week'
      when 30
        'month'
      else
        'year'
      end
  end
end
