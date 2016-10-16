require 'mechanize'
require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'PRY'
require 'csv'

# This is how we request the page we are going to scrape
site_url = "http://jobsatturner.com/careers/news-jobs"
page = HTTParty.get(site_url)

# Command turns html response into a Nokogiri object
parse_page = Nokogiri::HTML(page)

# Isolates the entire table, which is a hash
data = parse_page.css('.info-table')

# Isolates the an array of table rows
array_of_table_rows = data.first.children

# agent = Mechanize.new
# scrape_condition = agent.get("#{site_url}")
# num = 0
#
# while scrape_condition.to_s.include?("Next Page") do
  CSV.open('scrapped_jobs.csv', 'w',
  :write_headers=> true,
  :headers => ['Job Title', 'Division', 'Url', 'City', 'State', 'Company Name']
  ) do |csv|

      array_of_table_rows.each do |row|
        if row.children.first.attributes.key?("class") && row.children.first.attributes["class"].value == "jobTitle"
          csv_row = []
          # data.first.children[0].children.first.children.first
          # Extracting the Title
          csv_row[0] = row.children[0].children.first.children.first.text

          # Extracting the Division
          csv_row[1] = row.children[2].children.first.text

          # Extracting the URI
          csv_row[2] = site_url + row.children[0].children.first.attributes["href"].value

          # Extracting the Location, and seperating by city, state
          city = row.children[1].children.first.text.split(",").first
          state = row.children[1].children.first.text.split(",").last

          csv_row[3] = city
          csv_row[4] = state
          csv << csv_row
        end
      end
      # puts scrape_condition.links.first.text
      # num += 1
      # agent.click scrape_condition.link_with(:text => /Next Page/)
      #
      # if num == 3
      #   break
      # end
    end
# end
