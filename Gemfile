source "https://rubygems.org"

#ruby "2.7.6" # or "3.0.4"
ruby "3.3.7"

gem "jekyll", "~> 4.3.0"
gem "minima", "~> 2.5"

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-paginate-v2"
  gem "jekyll-sitemap"
end

# Add missing gems
gem "csv"
gem "base64"
gem "bigdecimal"

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1.2.0"
  gem "tzinfo-data"
end