module PageReporterHelper

  def report
    report_header
    report_annotation
    report_content
    report_footer
  end

  protected

  def report_header
    output HEADER
  end

  def report_annotation
  end

  def report_content
    raise NotImplementedError
  end

  def report_footer
    output FOOTER
  end

  private

  HEADER = <<HEADER
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body>

HEADER

  FOOTER = <<FOOTER

  </body>
</html>
FOOTER

end
