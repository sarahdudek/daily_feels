module DateFormatting
  def long_form_date(timestamp)
    timestamp.strftime('%B %e, %Y at %I:%M:%S %P')
  end
end

helpers DateFormatting
