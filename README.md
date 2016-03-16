# sikuli-jruby-cucumber-on-windows  
Running Sikuli with JRuby and Cucumber on Windows
I conducted the installation and ran the basic test on the following configuration:
Windows 7 Enterprise (Service pack 1)
Chrome Version 49.0.2623.87 m. 
Java 1.7.0_67 (64bit) 

I ran these commands from the native DOS prompt.

## 1) INSTALL JRUBY 1.7.24  
Download JRuby 1.7.24 exe(you can download another one but this is what I used)  
http://jruby.org/download  
Install JRuby (I have my installation at C:\jruby-1.7.24)

## 2) INSTALL RUBY GEMS  
jruby -S gem install gherkin rspec cucumber sikulix  
(gems stored at this location - C:\jruby-1.7.24\lib\ruby\gems\shared\gems)

## 3) CHECK SYSTEM ENVIRONMENT  
jruby -S gem list --local  (Displays which gems you have installed)  

## 4) INSTALL SIKULIX 1.1.0  
https://launchpad.net/sikuli/sikulix/1.1.0  
Create SikuliX folder under root and download the sikulixsetup-1.1.0.jar file to that location.   
Double click the setup file and select 1 (JRuby option only) and 2 and confirm.  
Click Yes to the remaining options.  

## 5) CREATE SYSTEM VARIABLES  
SIKULIX_HOME=C:\SikuliX  
SIKULIXAPI_JAR=%SIKULIX_HOME%\sikulixapi.jar 

## 6) INSTALL ANSICON (for nice console colours!)
Install ansicon application so that dos displays colours for running Cucumber tests:  
Console colours https://github.com/adoxa/ansicon/downloads  
Update the PATH C:\ansi153\x64\)  
>ansicon.exe -I (in C:\ansi153\x64)  
 
## 7) RUN THE TEST  
cd C:\git_repo_java\sikuli-jruby-cucumber-on-windows\  
jruby -S cucumber features\verify_google_search_button.feature  

## 8) CREATING FURTHER TESTS  
On Windows you can create further png files using the builtin Snipit tool.  
Give the png file user friendly names to make it easier to reference them in your tests.  
These can then be copied to your image file location.  




