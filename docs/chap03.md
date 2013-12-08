## Chapter 03:  Virtualization

If you plan on installing directly to your windows machine and do not wish to use virtualization technology, you can skip this chapter and move on to the next.

#### Setting Expectations

The topics we will discuss here are:

* Virtual Machines
* Virtual Machine Settings

### VMs (Virtual Machines)

When trying something out for the very first time it is recommended to install a virtual environment that can provide you with a way to preview, test, create,
destroy without affecting your current windows operating environment.  Likewise, if you are actively developing multiple applications you may want to have
multiple development boxes.  Luckily, Microsoft provides us a way to do that with limited fuss.

#### *[Virtual Machines by Microsoft] (http://www.modern.ie/en-us/virtualization-tools)*

You can navigate by clicking the link above and selecting the following:

* Click on **Get Free VMs**
* Select **Windows** as the desired test OS
* Select **VirtualBox on Windows** as the desired Virtualization platform
* Download all 5 files for IE11 Preview - Win8.1 Preview to a local folder on your computer

If you are having trouble navigating, the links should all be here:

*[IE11 Preview - Win8.1 Preview] (https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/Windows/IE11_Win81/IE11.Win8.1Preview.For.WindowsVirtualBox.txt)*

There are 4 files (1 executable and 3 rar files) that we will need to install our VM

1. Download the four files to a directory of your choosing.
2. Run the executable to compile the .OVA file.  Click **extract** when prompted and choose the same directory.
3. Right-click the .OVA and extract with 7zip to a folder of your choice or extract to the IE11 - Win8.1Preview directory by default.
4. Open VirtualBox and select **Import Appliance** and then **Open Appliance**.
5. Navigate to the directory that contains your Win8.1 Preview files and select the IE11 - Win8.1Preview.OVF file.  Click **Next** but DO NOT choose Import.

Look at the settings section below before clicking Import.

#### VM Settings

Under the Description column in Appliance Settings you can double click on any of the words to be prompted to change settings.  See the image above.

* Double click **Name** and change it to "Windows on Rails".
* Double click **RAM** and change it to a desired amount.  I'm changing mine to 4096.
* Double click **Network Adapter** and change yours to an appropriate adapter.

Once you've set the initial configuration, click the **Import** button.  This process may take some time.  Be patient until the import process is finished.

##### Finalizing Settings

On my system, my bridged network adapter did not show up in the initial configuration.  So, I changed that after the VM was built.  You can do the same by
selecting the new VM **Windows on Rails** and then click the **Settings** button.  I then clicked on network and changed to bridged and selected my adapter.  See
the image below:

<a href="http://www.flickr.com/photos/69355230@N03/11257903995/" title="network_settings"><img src="http://farm4.staticflickr.com/3834/11257903995_6eb5128b56_o.png" width="654" height="486" alt="network_settings"></a>

#### Launching Windows on Rails VM

Double click your Windows on Rails appliance to launch it for the first time.  You will see MS setting up and configuring the appliance for you.  When finished, you
should now see the Windows 8.1 metro app screen (nice colors!).

##### IMPORTANT!!

Your credentials should be the following.  If you find they aren't you may need to revisit the download page and find the credentials located there.  The following
is the default at the time of this writing:

     User:  IEUser
     Pass:  Passw0rd!

* Maximize the screen and install the guest additions.  Click **Devices** and then **Install Guest Additions**.
* Click Tap to choose what happens with this drive.
* Run the install and select all the defaults when prompted.
* Once finished, you will be prompted to reboot the machine.  Click **Finish** to do so.

<a href="http://www.flickr.com/photos/69355230@N03/11257935436/" title="guest_additions"><img src="http://farm8.staticflickr.com/7448/11257935436_14c16ca277_o.png" width="371" height="369" alt="guest_additions"></a>


Once the machine is rebooted, install any Windows Updates when prompted.  That's it!  Microsoft will automatically activate windows for you.

## CONGRATULATIONS ON YOUR NEW VM!

You should now have a fully functioning Windows 8.1 Pro Preview machine as an evaluation copy to play with.  This VM automatically comes with Internet Explorer 11 and
also has the appropriate .NET 4.5.x framework as well as Powershell 4.0.  If you plan on installing things manually from this point forward so that you can experience everything for yourself, skip to **Chapter 05**.  Otherwise, you can
use the automated script and installs in **Chapter 04**.

### Cloning your VM

If you decide that you want to clone your VM in the state it is in now, you can right-click the appliance "Windows on Rails", and choose "Clone".  Name your VM
clone "Windows on Rails Automated" and click "Next".  Leave the "Full Clone" checked and then click the **Clone** button.

You will now have two VMs (Windows on Rails) for the Manual Installation chapter.  You will also have a (Windows on Rails Automated) for the Automated Installation chapter.

Good luck!
