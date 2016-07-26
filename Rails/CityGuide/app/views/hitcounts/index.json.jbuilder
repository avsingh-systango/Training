json.array!(@hitcounts) do |hitcount|
  json.extract! hitcount, :id, :user_id, :hitable_id, :hitable_type
  json.url hitcount_url(hitcount, format: :json)
end
