require 'open-uri'
require 'nokogiri'

# def scrape_nih
  search = 'insomnia'
  url = "https://www.nhlbi.nih.gov/health-topics/#{search}"

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  array = []

  html_doc.search('.clearfix').each_with_index do |element, index|
    # array << element.search('p')
    # array << element.search('h2')
    # array << "#{index + 1}. #{element.text.strip}"
    # puts element.attribute('href').value
    array << element.text.strip
  end

  # html_doc.search('.clearfix h2').each_with_index do |element, index|
  #   array << "#{index + 1}. #{element.text.strip}"
  #   # puts element.attribute('href').value
  # end
# end

puts array


