json.array!(@solutions) do |solution|
  json.extract! solution, :id, :problem, :image, :solution
  json.url solution_url(solution, format: :json)
end
