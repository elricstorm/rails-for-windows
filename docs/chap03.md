## Chapter 03:  Virtualization

If you plan on installing directly to your windows machine and do not wish to use virtualization technology, you 
can skip this chapter and move on to the next.

### VMs (Virtual Machines)

When trying something out for the very first time it is recommended to install a virtual environment that can 
provide you with a way to preview, test, create, destroy without affecting your current windows operating 
environment.  Likewise, if you are actively developing multiple applications you may want to have multiple 
development boxes.  Luckily, Microsoft provides us a way to do that with limited fuss.

### *[Virtual Machines by Microsoft] (http://www.modern.ie/en-us/virtualization-tools)* 

You can navigate by clicking the link above and selecting the following:

* Get Free VMs
* Select Windows as the desired test OS
* Select VirtualBox on Windows as the desired Virtualization platform
* Download all 5 files for IE11 Preview – Win8.1 Preview.

If you are having trouble navigating, the links should all be here:

*[IE11 Preview - Win8.1 Preview] (https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/Windows/IE11_Win81/IE11.Win8.1Preview.For.WindowsVirtualBox.txt)*

There are 4 files (1 executable and 3 rar files)

1. Download the four files to a directory of your choosing.
2. Run the executable to compile the .OVA file.
3. Right-click the .OVA and extract with 7zip to a folder of your choice.
4. Open VirtualBox and import the .OVF file to build the Win 8.1 image.

For the most part that is it!  Start up the image and you now have a Windows 8.1 preview box.

### VM Settings

The initial settings for RAM may be set to 1024mb.  You can increase this if you have more memory available.  I 
have mine set to 4096mb.  You will also want to enable the network adapter.  In settings, click on Network 
and change to bridged and select your adapter.  As soon as you launch the machine and there's a network 
connection, Microsoft will automatically activate windows for you. 


