# START http://boxstarter.org/package/url?

# update chocolatey to the latest version
chocolatey update

# update all chocolatey packages
cup all

# Show hidden files/folder and file extensions
Set-ExplorerOptions -showHidenFilesFoldersDrives -showFileExtensions

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
cinst ruby.devkit

# Update RubyGems
cmd /c start powershell -command {gem update --system}

# Install PIK
choco gem pik

# Install Rails
choco gem rails

# Install MySQL 5.6.14
cinst mysql

# open a new instance of powershell and install the mysql2 gem
cmd /c start powershell -command {gem install --platform=ruby mysql2 -- --with-mysql-lib=C:\tools\mysql\mysql-5.6.14-win32\lib --with-mysql-include=C:\tools\mysql\mysql-5.6.14-win32\include}

# Copy the libmysql.dll to the ruby200\bin directory
Copy-Item -Path C:\tools\mysql\mysql-5.6.14-win32\lib\libmysql.dll -Destination c:\ruby200\bin

# Install other apps here
cinst python
cinst 7zip.install
cinst git
