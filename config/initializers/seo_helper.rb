SeoHelper.configure do |config|
  config.skip_blank               = false
  config.site_name                = Setting.title
  config.site_name_formatter  = lambda { |title, site_name|   "#{title} / #{site_name}".html_safe }
  config.pagination_formatter = lambda { |title, page_number| "#{title} - Page: #{page_number}" }
end