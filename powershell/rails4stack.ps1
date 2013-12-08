# START http://boxstarter.org/package/url?
$webpifeed="https://www.microsoft.com/web/webpi/4.6/webproductlist.xml"

# update chocolatey to the latest version
chocolatey update

# update all chocolatey packages
cup all

# 7zip
cinst 7zip

# Fiddler
cinst fiddler

# Install Webpicmd and WebMatrix
cinst webpicmd
webpicmd /install /products:WebMatrix /accepteula

# Install Visual Studio 2012 Ultimate (90-day preview)
cinst VisualStudio2012Ultimate

# Visual Studio 2012 Update 3 http://support.microsoft.com/kb/2835600
cinst Dogtail.VS2012.3

# Other Packages
cinst resharper
cinst bleachbit
cinst sublime

# Browsers
cinst GoogleChrome
cinst FireFox
cinst Opera
cinst safari

# GIT
cinst git

# Set Environment Variables for home, gem_home, and gem_path
cd env:
mkdir $env:userprofile\.gems
[Environment]::SetEnvironmentVariable("HOME",$env:userprofile,"User")
[Environment]::SetEnvironmentVariable("GEM_HOME",$env:userprofile + "\.gems","User")
[Environment]::SetEnvironmentVariable("GEM_PATH",$env:userprofile + "\.gems","User")
[Environment]::SetEnvironmentVariable("PATH",$env:path + ";" + $env:userprofile + "\.gems\bin","User")
# Proxies below
# [Environment]::SetEnvironmentVariable("HTTP_PROXY","http://yourproxy:port","User")

# Install Ruby & Development Kit
cinst ruby
cmd /c start powershell -command {cinst ruby.devkit}

# Update RubyGems
cmd /c start powershell -command {gem update --system}

# Install Rails
choco gem rails

# Install MySQL 5.6.14
cinst mysql

# open a new instance of powershell and install the mysql2 gem
cmd /c start powershell -command {gem install --platform=ruby mysql2 -- --with-mysql-lib=C:\tools\mysql\mysql-5.6.15-win32\lib --with-mysql-include=C:\tools\mysql\mysql-5.6.15-win32\include}

# Copy the libmysql.dll to the ruby200\bin directory
Copy-Item -Path C:\tools\mysql\mysql-5.6.15-win32\lib\libmysql.dll -Destination c:\ruby200\bin

# COMPLETED??



