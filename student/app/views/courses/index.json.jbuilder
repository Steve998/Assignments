json.array!(@courses) do |course|
  json.extract! course, :id, :student_id, :course_name, :course_description, :course_number
  json.url course_url(course, format: :json)
end
