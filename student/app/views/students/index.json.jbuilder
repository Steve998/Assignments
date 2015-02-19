json.array!(@students) do |student|
  json.extract! student, :id, :firstname, :lastname, :birthdate, :description, :age
  json.url student_url(student, format: :json)
end
