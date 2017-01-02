module FrontendHelper
  def total_tuition_fees(tuition)
  i=0
  multiple_of_status_values = 1
  number = tuition.admin_admission_fees_statuses.count
  while i < number
    multiple_of_status_values = multiple_of_status_values*tuition.admin_admission_fees_statuses[i].value
    i= i+1
  end
  total_payable = multiple_of_status_values * tuition.payable
  total_payable
end

def tuition_fees_badge(tuition)
  if tuition.id.odd?
    badge = 'success'
  else
    badge = 'warning'
  end
  badge
end
  end