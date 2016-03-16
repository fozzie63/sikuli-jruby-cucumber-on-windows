#########################################################
# Step Definitions
# SikuliX, JRuby, Cucumber on MacOS
# Written by Richard Foster
#########################################################

Given /^I click on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.click"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Given /^I doubleclick on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.doubleClick"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Given /^I rightclick on "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			  @screen.rightClick"#{bitmap}"
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

When /^I drag "(.*?)" to "(.*?)"$/ do |bitmap, destination|
	begin
		@screen.wait"#{bitmap}", 10
		if @screen.exists"#{bitmap}"
			@screen.dragDrop("#{bitmap}",destination)
		end
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

When /^I type "(.*?)"$/ do |text|
	@screen.type"#{text}"
end

When /^I type "(.*?)" and tab$/ do |text|
	@screen.type"#{text}"+ Key.TAB
end

When /^I hit BACKSPACE$/ do
	@screen.type(Sikulix::KEY_BACKSPACE)
end

When /^I hit ENTER$/ do
	@screen.type("\n")
end

When /^I hit TAB$/ do
	@screen.type("\t")
end

When /^I hit CTRL A$/ do
	@screen.type("a", Sikulix::KEY_CTRL)
end

When /^I paste "(.*?)"$/ do |text|
	@screen.paste("#{text}")
end

When /^I wait for "(.*?)" to appear$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

When /^I wait for "(.*?)" to disappear$/ do |bitmap|
	begin
		@screen.waitVanish"#{bitmap}", 10
	rescue
		fail("The following bitmap was found: " + "#{bitmap}" + "\n")
	end
end

Then /^I should see "(.*?)"$/ do |bitmap|
	begin
		@screen.wait"#{bitmap}", 10
	rescue
		fail("The following bitmap cannot be found: " + "#{bitmap}" + "\n")
	end
end

Then /^I should not see "(.*?)"$/ do |bitmap|
	begin
		@screen.waitVanish "#{bitmap}", 10
	rescue Exception => e
		#puts "Exception was raised: #{e.class}"
		fail("The following bitmap was found: " + "#{bitmap}" + "\n")
	end
end

Then /^I wait "(.*?)" seconds$/ do |delay|
	sleep "#{delay}".to_i
end

Then /^I wait upto "(.*?)" seconds for "(.*?)" to vanish$/ do |delay, bitmap|
	@screen.waitVanish "#{bitmap}", "#{delay}".to_i
end

When /^I uncheck all check boxes$/ do
	for x in @screen.findAll "jupiterCheckboxTicked.png"
		@screen.click "jupiterExportButton.png"
	end
end
