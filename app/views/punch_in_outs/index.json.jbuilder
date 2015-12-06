json.array!(@punch_in_outs) do |punch_in_out|
  json.extract! punch_in_out, :id, :user_id, :check_in, :check_out
  json.url punch_in_out_url(punch_in_out, format: :json)
end
