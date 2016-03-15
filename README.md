# sikuli-jruby-cucumber-on-windows
Running Sikuli with JRuby and Cucumber on Windows

1) INSTALL RVM (Ruby Virtual Machine)
\curl -L https://get.rvm.io | sudo bash -s stable
rvm install jruby-1.7.19
rvm use jruby-1.7.19 --default

2) INSTALL RUBY GEMS
gem install gherkin rspec cucumber sikulix

3) CHECK SYSTEM ENVIRONMENT
rvm list rubies
Should be set to "=> jruby-1.7.19 [ x86_64 ]"

rvm gemset list
Shows where your gems are stored

gem list --local
Shows which gems you have installed

4) INSTALL SIKULIX 1.1.0
https://launchpad.net/sikuli/sikulix/1.1.0
Create SikuliX folder under root and download the sikulixsetup-1.1.0.jar file to that location
Double click the setup files and select all the options
SikuliX app is created in the folder. Move this to Applications.	

6) Create System Environment Variables
SIKULIX_HOME=C:\\SikuliX
SIKULIXAPI_JAR=$SIKULI_HOME\sikulixapi.jar

7) TEST PREPARATION
Create a shortcut to Chrome on the Desktop and ensure it is visible
Open Chrome and open a new tab and then quit Chrome

8) RUN THE TEST
cucumber features/verify_google_search_button.feature

9) CREATING FURTHER TESTS
Its necessary to create the png files using the SikuliX IDE. Grab on MacOS does not work and even when I tried to halve the resolution of the file in Preview Sikuli still wouldn't have it.
Open up SikuliX IDE and capture the elements that you want
Once finished save as a Sikuli source file
Right click on the Sikuli source file in Finder and select "Show Package Contents". The png files are contained here.
You will need to give the png files more user friendly names.
These can then be copied to your image file location.




