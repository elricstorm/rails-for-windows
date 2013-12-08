## Chapter 04:  Automated Installations

This chapter will focus on automated package management installations with PowerShell, NuGet, Chocolatey, and BoxStarter.  There are some very short
manual processes you will need to follow first.

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

You should now see a PowerShell icon on your task bar.  Right-click and "Run as Administrator" to open a PS prompt.

##### Execution Policy

We will be changing the execution policy in PS so that we can run local and remote scripts going forwad. Run the following commands:

     C:\> Get-ExecutionPolicy

You should see that it is set to "Restricted".  Let's change that

     C:\> Set-ExeuctionPolicy unrestricted

When prompted, click Y for Yes and hit enter.  Now if you type Get-ExecutionPolicy you'll see it shows Unrestricted now.

     From this point forward, we will be working with automated scripting.

### Automated Installation

#### [BoxStarter](http://boxstarter.org/)

BoxStarter allows you to create an install script that can automate everything you need to install on your VM.  I've created an example script for this purpose.  Open a
web browser and navigate to the following URL:  [Rails 4 Windows Script](https://gist.github.com/elricstorm/7853016).  This is a simple example script showing the items
we'll be installing.

In order to use boxstarter via a gist script like this we need to find the raw text.  Click the <> raw text link to the upper right of the script.  You should see that the
URL now shows:  https://gist.github.com/elricstorm/7853016/raw/0044e705651fe770cdb76bd89a7154697ebdf473/rails4windows.  We'll copy this and place this URL in a boxstarter
START command:

     PS C:\Windows\System32> START http://boxstarter.org/package/url?https://gist.github.com/elricstorm/7853016/raw/250e2e03ab65a68bc0fdd2d2d91c7c26f4bd57c9/rails4windows

This command can be copied and pasted into PS to start the automated process.  Now we can use local scripts, gist scripts like this one, or even package things onto a
USB flash drive.  For this automated example, I'm going to use a simple gist script.  Copy and paste this into PS and hit enter.

If you see any prompts, select the default **Yes/Ok/Run/Download and Install this Feature** prompts.  Automation should continue.  If prompted for a password, make sure to
use the Passw0rd! from the IEUser installation.

**THIS PROCESS MAY TAKE AWHILE**

If you step away during this time and come back to find yourself at the Windows 8 metro view, click Desktop and the process will continue.  If the automation process fails for any
reason, hit enter and open a new window and try the process again.  Watch and review any errors, if they occur.  If the machine reboots, it will automatically log in with the
password you provided and bring you to the metro view.  Click desktop and wait for the process to continue.  Likewise, if Windows prompts you to do system updates, you can cancel
and update later on.

Always remember that you can always restart the automated process again.  Chocolatey will automatically know if you have already installed an application and bypass it,
continuing on with the installation script.

<a href="http://www.flickr.com/photos/69355230@N03/11263555476/" title="install_automated"><img src="http://farm4.staticflickr.com/3815/11263555476_1ba6eb50be_o.png" width="666" height="338" alt="install_automated"></a>

Once everything is completed, the following window should show with Enabling UAC before the exit command:

<a href="http://www.flickr.com/photos/69355230@N03/11263610373/" title="install_automated2"><img src="http://farm4.staticflickr.com/3789/11263610373_d46d568ca5_o.png" width="666" height="337" alt="install_automated2"></a>

Once done, let's verify that mysql2 is working properly by opening IRB from a command prompt.

     C:\> irb
     C:\> require 'mysql2'
     => true

This should equal true.

If everything has gone fine so far, pat yourself on the back for a job well done!  The majority of the software you need has been installed.  Reboot your Windows 8.1 vm and
continue on in Chapter 06: Your First Rails App to find out how to use Ruby and Ruby on Rails.
