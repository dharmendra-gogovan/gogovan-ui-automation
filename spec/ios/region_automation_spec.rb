require_relative '../../spec/spec_helper'

desired_caps = {
  caps: {
    platformName: 'iOS',
    platformVersion: '11.4',
    deviceName: 'iPhone 6s',
    app: IOS_APP,
    automationName: 'XCUITest'
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
  end
end
