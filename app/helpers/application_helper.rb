module ApplicationHelper
  def number_of_days(start_date, end_date)
    ((end_date - start_date) / (60 * 60 * 24)).to_i
  end
end
