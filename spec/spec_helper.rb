require 'em/pure_ruby'
require 'rubygems'
require 'appium_lib'
require 'test/unit'
extend Test::Unit::Assertions

ANDROID_APP = './apps/debug.apk'.freeze
ANDROID_PACKAGE = 'hk.gogovan.clientapp'.freeze

IOS_APP = './apps/debug.ipa'.freeze
