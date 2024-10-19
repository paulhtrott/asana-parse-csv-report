require 'csv'

# Initialize a hash to store parent tasks and their associated info
grouped_tasks = {}

# Read the CSV and group the info based on the parent_task (info[13])
CSV.read('search_results.csv').each do |info|
  parent_task = info[13] # Parent task

  # Create a formatted string with info[3] and info[4]
  task_info = "#{info[3]} - #{info[4]}"

  # Group the task_info under the correct parent_task
  if grouped_tasks[parent_task]
    grouped_tasks[parent_task] << task_info
  else
    grouped_tasks[parent_task] = [task_info]
  end
end

# Output the grouped tasks
grouped_tasks.each do |parent_task, tasks|
  puts parent_task # Print the parent task as the title
  tasks.each do |task_info|
    puts task_info # Print each task under the parent task
  end
  puts "" # Add a blank line between different parent_task sections
end
