class Job < ActiveRecord::Base
	#職務類別
  
  def self.categories
    JobData.job_categories.map{ |k,v| [I18n.t("job_categories.#{k}"),v] }
  end
end
