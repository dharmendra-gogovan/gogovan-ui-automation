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
    @core = Appium::Core
  end

  after(:all) do
    @driver.quit
  end

  it 'Wait for Transport page' do
    @core::Wait.until_true { exist { @driver.find_element(id: 'topSheet') } }

    transport_badge = @driver.find_element :accessibility_id, 'SERVICE_BIG_BTN_0'
    transport_badge.click
  end
end
