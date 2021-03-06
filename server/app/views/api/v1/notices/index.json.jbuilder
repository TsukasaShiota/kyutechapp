json.array!(@notices) do |notice|
  json.extract! notice, :id, :title, :details, :category_id, :department_id, :campus_id, :date, :period_time, :grade, :place, :subject, :teacher, :before_data, :after_data, :web_url, :note, :document1_name, :document2_name, :document3_name, :document4_name, :document5_name, :document1_url, :document2_url, :document3_url, :document4_url, :document5_url, :regist_time, :created_at, :updated_at
  json.url notice_url(notice, format: :json)
end
