module Docs
  class JqueryCore < Jquery
    self.name = 'jQuery'
    self.release = 'up to 2.2.3'
    self.base_url = 'https://api.jquery.com/'
    self.initial_paths = %w(/index/index)

    html_filters.insert_before 'jquery/clean_html', 'jquery_core/entries'

    options[:root_title] = 'jQuery'

    options[:fix_urls] = ->(url) do
      url.sub! 'http://api.jquery.com/', 'https://api.jquery.com/'
    end

    options[:skip_patterns] += [
      /h\/deferred\.reject/i,
      /Selectors\/odd/i,
      /index/i
    ]
  end
end
