#########################################################
# Environment file  
# SikuliX, JRuby, Cucumber on Windows
# Written by Richard Foster
# Date: 15/03/2016
#########################################################

require "sikulix\\platform"
Sikulix::Platform.check_and_require
require "sikulix\\sikulix.rb"
Sikulix::ImagePath.add("C:\\git_repos\\sikuli-jruby-cucumber-on-windows\\images\\")
require 'C:\\SikuliX\\sikulixapi.jar'

class SikuliNavigator
	def initialize
		@screen = Sikulix::Screen.new
	end
end

World { SikuliNavigator.new }
