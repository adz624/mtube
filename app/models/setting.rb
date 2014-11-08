class Setting < Settingslogic
  source "./config/setting.yml"
  namespace Rails.env
end
