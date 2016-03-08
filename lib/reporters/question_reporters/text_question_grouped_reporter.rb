require_relative 'question_reporter'

class TextQuestionGroupedReporter < QuestionReporter

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"

    output '<table class="table table-bordered table-stripped table-hover">'
    output '  <tbody>'

    @data.each do |group, group_answers|
      next if group_answers.empty?

      group_name = group.to_s

      output "<tr><th>#{group_name}</th></tr>"
      output '<tr><td>'
      output '<ul class="results">'
      group_answers.each do |answer|
        output "<li><i>#{answer}</i></li>"
      end
      output '</ul>'
      output '</td></tr>'
    end

    output '</tbody>'
    output '</table>'
  end

end
