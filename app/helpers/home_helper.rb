module HomeHelper
  def list(data, option)
    result = nil
    if option == 'day'
      result = "<table border=1><tr><th></th><th>From - To</th></tr>"
      data.each do |key,value|
        result += "<tr><td>#{key.to_s}</td><td>#{value[:from]} - #{value[:to]}</td></tr>"
      end
      result += "</table>"
    elsif option == 'day-option'
      result = "<table border=1><tr><th>From - To</th></tr>"
      result += "<tr><td>#{data[:from]} - #{data[:to]}</td></tr>"
      result += "</table>"
    elsif option == 'week-option'
      result = "<table border=1><tr><th>S No.</th><th>From - To</th></tr>"
      data.each_with_index do |d, index|
        result += "<tr><td>#{index+1}</td><td>#{d[:from]} - #{d[:to]}</td></tr>"
      end
      result += "</table>"
    elsif option == 'day-week'
      result = "<table border=1><tr><th>S No.</th><th>Rahukalam</th><th>Yamagandam</th><th>Gulikai</th></tr>"
      data.each_with_index do |d, index|
        result += "<tr><td>#{index+1}</td>"
        d.each do |key,value|
          result += "<td>#{value[:from]} - #{value[:to]}</td>"
        end
        result += "</tr>"
      end
      result += "</table>"
    end
    result.html_safe
  end
end
