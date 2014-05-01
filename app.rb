# this script uses the icalendar ruby gem to generate an ics
# file from hardcoded dates. it's a first step towards making
# a script that generates ics files based from a list of events 

require 'icalendar'
require 'date'

# Create a calendar with an event (standard method)
cal = Icalendar::Calendar.new

# hard coded to generate ics

# New Year's Day
# Wednesday, January 1, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140101')
  e.dtend       = e.dtstart
  e.summary     = "New Year's Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Martin Luther King Day
# Monday, January 21, 2013
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140120')
  e.dtend       = e.dtstart
  e.summary     = "Martin Luther King Day "
  e.description = ""
  e.ip_class    = "PRIVATE"
end


# Presidents' Day
# Monday, February 17, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140217')
  e.dtend       = e.dtstart
  e.summary     = "Presidents' Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Cesar Chavez Day
# Monday, March 31, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140331')
  e.dtend       = e.dtstart
  e.summary     = "Cesar Chavez Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Memorial Day
# Monday, May 26, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140526')
  e.dtend       = e.dtstart
  e.summary     = "Memorial Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Independence Day
# Friday, July 4, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140704')
  e.dtend       = e.dtstart
  e.summary     = "Independence Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Labor Day
# Monday, September 1, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20140901')
  e.dtend       = e.dtstart
  e.summary     = "Labor Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Veteran's Day
# Tuesday, November 11, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20141111')
  e.dtend       = e.dtstart
  e.summary     = "Veteran's Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Thanksgiving Day
# Thursday, November 27, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20141127')
  e.dtend       = e.dtstart
  e.summary     = "Thanksgiving Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end

# Christmas Day
# Thursday, December 25, 2014
cal.event do |e|
  e.dtstart     = Icalendar::Values::Date.new('20141225')
  e.dtend       = e.dtstart
  e.summary     = "Christmas Day"
  e.description = ""
  e.ip_class    = "PRIVATE"
end


cal.publish

cal_string = cal.to_ical
puts cal_string
puts 'writing to file'
  local_filename = 'foo.ics'
File.open(local_filename, 'w') {|f| f.write(cal_string) }
puts 'written to file'
