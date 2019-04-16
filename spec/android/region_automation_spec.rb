require_relative '../../spec/spec_helper'

desired_caps = {
  caps: {
    platformName: 'Android',
    platformVersion: '9',
    deviceName: 'emulator-5554',
    app: ANDROID_APP,
    automationName: 'UIAutomator2',
    appActivity: 'hk.gogovan.clientapp.RootActivity'
  }
}

describe 'Basic Android interactions' do

  before(:all) do
    @driver = Appium::Driver.new(desired_caps, false).start_driver
  end

  after(:all) do
    @driver.quit
  end

  it 'Wait for Transport page' do
    @driver.find_element :id, 'topSheet'
  end
end
