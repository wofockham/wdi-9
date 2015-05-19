# ###1. Create an array of the days of the week
# - Create a variable named `days_of_the_week` as an array of the following:
#     - Monday
#     - Tuesday
#     - Wednesday
#     - Thursday
#     - Friday
#     - Saturday
#     - Sunday

days_of_the_week = %w{ Monday Tuesday Wednesday Thursday Friday Saturday Sunday }
p days_of_the_week

# ###2. My calendar says the first day is Sunday...
# - Remove Sunday from the last postion and move it to the first position.  Use array methods.
days_of_the_week.unshift( days_of_the_week.pop )
p days_of_the_week


# ###3. Create a new array of the days of the week:
# - The first inner array should be the weekdays
# - The second inner array should be the weekend days
week_chunks = [ days_of_the_week[1..5], [days_of_the_week.last, days_of_the_week.first] ]
p week_chunks

# ###4. Remove either the weekdays or the weekends
# Your choice...
week_chunks.delete_at 1 # week_chunks.pop
p week_chunks

# ###5. Sort the remaining days alphabetically
week_chunks.flatten!.sort!
p week_chunks


