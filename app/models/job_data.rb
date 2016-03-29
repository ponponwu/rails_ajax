class JobData < Settingslogic
  source "#{Rails.root}/config/job_data.yml"
  namespace Rails.env
end