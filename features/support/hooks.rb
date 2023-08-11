Before do
  @service = ->(klass) { klass.new }
  Faker::Config.locale = 'pt-BR'
end

After do |scenario|
  exception_message(scenario)
end

def exception_message(scenario)
  scene = scenario.failed?
  return unless scene == true

  Kernel.puts "\n--------------------------------------------------------------------------------------------"
  Kernel.puts 'Reason:'
  Kernel.puts "\n - Request  body: #{@payload.to_json}"
  Kernel.puts "\n - Response code: #{@response.response.code}"
  Kernel.puts "\n - Response body: #{@response.parsed_response.to_json}"
  Kernel.puts "\n🐞🐞🐞🐞🐞🐞🐞 #{scenario.exception.message}"
  Kernel.puts "--------------------------------------------------------------------------------------------\n"
end

AfterConfiguration do |config|
 config.on_event(:test_case_finished) do |event|
   Kernel.puts "\n--------------------------------------------------------------------------------------------------"
   Kernel.puts 'Results:'
   Kernel.puts " - Scenario......: #{event.test_case.name}"
   Kernel.puts " - The results is: #{event.result}"
   Kernel.puts "--------------------------------------------------------------------------------------------------\n"
 end
end

at_exit do
  @infos = {
    'Data do Teste' => Time.now.strftime('%d/%B/%Y'),
    'Hora do Teste' => Time.now.strftime('%HH%MM%SS')
  }
  ReportBuilder.configure do |config|
    config.input_path = 'report/features_report.json'
    config.report_path = 'report/features_report'
    config.report_types = [:html]
    config.include_images = true
    config.report_title = 'Automação API Portifolio'
    config.additional_info = @infos
    config.color = 'indigo'
  end
  ReportBuilder.build_report
end
