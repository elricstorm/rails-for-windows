## Chapter 04:  Automated Installations

This chapter will focus on automated package management installations with PowerShell, NuGet, Chocolatey, and BoxStarter.  There are some very short
manual processes you will need to follow first.

### NuGet & Chocolatey Quick Install

1. Open a Browser and visit [Chocolatey.org](http://chocolatey.org)
2. Click the link under the easy installation OR copy the text below

````
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
````

3. Open a CMD prompt and right-click and paste, hitting enter.  After the installation is completed, close the CMD prompt.
4. Click the **Windows** key on your keyboard and type "Powershell", right-click on "Windows PowerShell" and pin to the "taskbar".
5. Click Desktop off the metro view window or just click the Windows key again on your keyboard to go back to the desktop.

### PowerShell Scripting

You should now see a PowerShell icon on your task bar.  Right-click and "Run as Administrator" to open a PS prompt.

##### Execution Policy

We will be changing the execution policy in PS so that we can run local and remote scripts going forwad. Run the following commands:

     C:\> Get-ExecutionPolicy

You should see that it is set to "Restricted".  Let's change that

     C:\> Set-ExeuctionPolicy unrestricted

When prompted, click Y for Yes and hit enter.  Now if you type Get-ExecutionPolicy you'll see it shows Unrestricted now.

     From this point forward, we will be working with automated scripting.

### Automated Installation

TODO

Once done, let's verify that mysql2 is working properly by opening IRB.

     C:\> irb
     C:\> require 'mysql2'
     => true

This should equal true.

If everything has gone fine so far, pat yourself on the back for a job well done!  The majority of the software you need has been installed.  Continue on in Chapter 06: Your
First Rails App to find out how to use Ruby and Ruby on Rails.
