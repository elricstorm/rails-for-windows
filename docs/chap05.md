## Chapter 05:  Manual Installations

This chapter will focus on manual installations.  Because we will be managing applications going forward, we still want to install Chocolatey and
setup our PS environment for automated scripting in the future.

### NuGet & Chocolatey Quick Install

1. Open a Browser and visit [Chocolatey.org](http://chocolatey.org)
2. Click the link under the easy installation OR copy the text below

````
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
````

3. Open a regular CMD prompt and right-click and paste, hitting enter.  After the installation is completed, close the CMD prompt.
4. Click the **Windows** key on your keyboard and type "Powershell", right-click on "Windows PowerShell" and pin to the "taskbar".
5. Click Desktop off the metro view window or just click the Windows key again on your keyboard to go back to the desktop.

### PowerShell Scripting

You should now see a PowerShell icon on your task bar.  Right-click and "Run as Administrator" to open a PS prompt.  Type cd\ and hit enter.

##### Execution Policy

We will be changing the execution policy in PS so that we can run local and remote scripts going forwad. Run the following commands:

     C:\> Get-ExecutionPolicy

You should see that it is set to "Restricted".  Let's change that

     C:\> Set-ExeuctionPolicy unrestricted

When prompted, click Y for Yes and hit enter.  Now if you type Get-ExecutionPolicy you'll see it shows Unrestricted now.  All set!

##### Chocolatey Packages with PS

Let's run some updates and install some packages with PS to make it feel more like a Windows Dev environment!  You can copy and paste the commands into PS if you want.  If you
want to know what each app does, you can type the app in the chocolatey.org search box and read about it.  Do these in order.  Also note that some of the commands may be
slightly longer in PS.  The main reason is to teach you how to run additional commands in PS.

     C:\> chocolatey update
     C:\> cup all
     C:\> cinst 7zip
     C:\> cinst fiddler
     C:\> $webpifeed="https://www.microsoft.com/web/webpi/4.6/webproductlist.xml"
     C:\> cinst webpicmd
     C:\> webpicmd /install /products:WebMatrix /accepteula
     C:\> cinst VisualStudio2012Ultimate
     C:\> cinst Dogtail.VS2012.3
     C:\> cinst resharper
     C:\> cinst bleachbit
     C:\> cinst sublime
     C:\> cinst curl

Web Browsers

     C:\> cinst GoogleChrome
     C:\> cinst FireFox
     C:\> cinst Opera
     C:\> cinst safari

Git

     C:\> cinst git

Set Paths and Environment Variables

     C:\> cd env:
     C:\> mkdir $env:userprofile\.gems
     C:\> [Environment]::SetEnvironmentVariable("HOME",$env:userprofile,"User")
     C:\> [Environment]::SetEnvironmentVariable("GEM_HOME",$env:userprofile + "\.gems","User")
     C:\> [Environment]::SetEnvironmentVariable("GEM_PATH",$env:userprofile + "\.gems","User")
     C:\> [Environment]::SetEnvironmentVariable("PATH",$env:path + ";" + $env:userprofile + "\.gems\bin","User")

Install Ruby and Ruby DevKit

     C:\> cinst ruby
     C:\> cmd /c start powershell -command {cinst ruby.devkit}

Install and update Gems and Rails

     C:\> cmd /c start powershell -command {gem update --system}
     C:\> cmd /c start powershell -command {gem install rails}

Install MySQL and gems

     C:\> cinst mysql
     C:\> cmd /c start powershell -command {mysqladmin -u root password Passw0rd!}

When installing the mysql2 gem ensure that the statement below best reflects the package of mysql that was installed above.  The easiest way to find this out is to
go to the C:\tools directory and see what the mysql version is on the folder.  At the time of this writing it is 5.6.15.  This may change.  If it does, substitute the
correct version in the statement below.

     C:\> cmd /c start powershell -command {gem install --platform=ruby mysql2 -- --with-mysql-lib=C:\tools\mysql\mysql-5.6.15-win32\lib --with-mysql-include=C:\tools\mysql\mysql-5.6.15-win32\include}

Copy the libmysql.dll to the ruby200\bin directory (also keeping in mind that the version of mysql may have changed at the time of this writing it is 5.6.15)

     C:\> Copy-Item -Path C:\tools\mysql\mysql-5.6.15-win32\lib\libmysql.dll -Destination c:\ruby200\bin

Once done, let's verify that mysql2 is working properly by opening IRB.

     C:\> irb
     C:\> require 'mysql2'
     => true

This should equal true.

If everything has gone fine so far, pat yourself on the back for a job well done!  The majority of the software you need has been installed.  Continue on in Chapter 06: Your
First Rails App to find out how to use Ruby and Ruby on Rails.
