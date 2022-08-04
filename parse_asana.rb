require 'csv'

CSV.read('search_results.csv').each do |info|
  # Task ID,Created At,Completed At,Last Modified,Name,Section/Column,Assignee,Assignee Email,Start Date,Due Date,Tags,Notes,Projects,Parent Task,Blocked By (Dependencies),Blocking (Dependencies),Type,Team/Focus,Priority,Time Estimate/Sizing,Team / Focus,Product stage,Project size,Rev Impact,P2'd
   puts "#{info[3]} - #{info[4]}"
end
