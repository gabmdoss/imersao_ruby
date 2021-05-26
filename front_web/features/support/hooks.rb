Before do
    @app = App.new
end

After do |scenario|
    if scenario.failed?
    page.save_screendhot("screenshots/#{scenario.name}#{Time.now}_screenshot.png")
    end
end