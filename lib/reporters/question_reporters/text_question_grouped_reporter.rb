require_relative 'question_reporter'

class TextQuestionGroupedReporter < QuestionReporter

  def report
    output "<h2>#{@descriptions[@question_name]}</h2>"

    output '<table class="table table-bordered table-stripped table-hover">'
    output '  <tbody>'

    @data.each do |group_name, group_answers|
      next if group_answers.empty?

      output "<tr><th>#{group_name}</th></tr>"
      output '<tr><td>'
      output '<ul class="results">'
      group_answers.sort.each do |answer|
        output "<li><i>#{answer}</i></li>"
      end
      output '</ul>'
      output '</td></tr>'
    end

    output '</tbody>'
    output '</table>'
  end

end
