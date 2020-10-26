RSpec::Support.require_rspec_core 'formatters/base_text_formatter'

class BonusFormatter < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    output.puts BONUS if notification.failure_count.zero?
    super notification
  end
end

BONUS = "

 .----------------.  .----------------.  .-----------------. .----------------.
| .--------------. || .--------------. || .--------------. || .--------------. |
| |  ________    | || |     ____     | || | ____  _____  | || |  _________   | |
| | |_   ___ `.  | || |   .'    `.   | || ||_   \\|_   _| | || | |_   ___  |  | |
| |   | |   `. \\ | || |  /  .--.  \\  | || |  |   \\ | |   | || |   | |_  \\_|  | |
| |   | |    | | | || |  | |    | |  | || |  | |\\ \\| |   | || |   |  _|  _   | |
| |  _| |___.' / | || |  \\  `--'  /  | || | _| |_\\   |_  | || |  _| |___/ |  | |
| | |________.'  | || |   `.____.'   | || ||_____|\\____| | || | |_________|  | |
| |              | || |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------'  '----------------'

"
