require 'net/http'
require 'pry'
require 'json'

uri = URI('http://jobsatturner.com/careers/news-jobs')

res = Net::HTTP.get(uri)

Pry.start(binding)
