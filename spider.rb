require 'mechanize'
require 'pry'

site_url = "http://jobsatturner.com/careers/news-jobs"

Binding.pry
mech = Mechanize.new
mech.max_history = nil

mech.get("http://jobsatturner.com/careers/news-jobs")

# Selects Next page
mech.click mech.get("http://jobsatturner.com/careers/news-jobs").link_with(:text => /Next page/)

# Returns an Array of all links on the page
ech.get("http://jobsatturner.com/careers/news-jobs").links
