json.extract! input, :id, :_id, :dataTime, :type, :sessionId, :sessionDesc, :sessionCond, :isUndo, :created_at, :updated_at
json.url input_url(input, format: :json)
