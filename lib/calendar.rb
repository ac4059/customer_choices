require 'date'

 class Calendar

   DAYS = 90

   attr_reader :days

   def initialize(days = DAYS)
     @days = days
     @calendar = []
   end

   def generate_calendar
     count = 0

     while count < DAYS do
       day = Date.today + count
       date = create_hash(day)
       @calendar.push(date)
       count += 1
     end

     return @calendar
     end

     private

     def create_hash(day)
       {
         date: day.strftime('%Y'),
         mday: day.mday,
         month: day.strftime('%B'),
         day: day.strftime('%^a'),
         customer: []
       }
     end
 end
