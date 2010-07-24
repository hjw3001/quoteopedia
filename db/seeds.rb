# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Quotation.delete_all
directory = File.expand_path(File.dirname(__FILE__))

html_code = IO.read("#{directory}/data/quotes.htm")
data = html_code.split(/<p>/)
a = 0
while a < data.size
  Quotation.create(:content => data[a], :author => data[a+1])
  a += 2
end
