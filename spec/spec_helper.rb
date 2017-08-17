require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def desired_capabilities 
{ caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "~/Downloads/protect.budgetwatch_14.apk"
      }
}

end