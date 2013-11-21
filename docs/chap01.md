## Chapter 01:  Understanding the Windows Environment

### Windows Environments

The main environments we will focus on are Windows 7 and Windows 8.  We'll also look into the difference between 32-bit and 64-bit OS and discuss potential impacts on developing and what changes you may need to make.

The following areas will become a part of the discussion tree:

* Structuring and Organizing your development areas
* Working with and setting up Environment Variables
* Working with and setting up the PowerShell environment  
* Handling Proxies
* Troubleshooting Issues

The main components we'll be working with in both windows environments will either be GUI related, or involve the use of command prompts (cmd) or PowerShell (ps).  

### Windows 8.1 (Blue)

For those of you unfamiliar to Windows 8.1 I recommend installing it for free!  Skip to **Chapter 03:  Virtualization** to find out how to get an environment up and running virtually in under 15 minutes. If you already have an environment ready to go or you've completed the Virtualization chapter, continue on here. 


***

#### Why use windows again?  Please remind me

Windows is one of the easiest operating environments to use from a feature, hardware, software, and support viewpoint.  One of the main reasons is that the [usage share] (http://en.wikipedia.org/wiki/Usage_share_of_operating_systems) is much greater with **any** windows environment than it is with Linux and Mac.  Even newly showcased Windows 8 has a much greater usage share than Linux and Mac (roughly 9.25% compared to Mac(7.73%) and Linux(1.61%)).  Windows 7 dominates at almost 47%!  Popularity breeds information and Windows also has better commercial support worldwide than any other environment.  As an fyi, I use (all) windows environments, Linux (centOS, Ubuntu), and MAC (Leopard).  This is not a discussion about whether or not Windows is better than the other environments.  That discussion is heavily opinionated and available all over the web.  

The main emphasis here is that everything you need to setup and use Ruby and Ruby on Rails is just as readily available for Windows as it is for any other operating environments.  You aren't going to install Ruby (the language) or Ruby on Rails (the framework) and then find out you can't use them.  You will also find that what you thought you knew about Windows as a development environment has changed by leaps and bounds.

Let's jump in together!  Hey, whoa.. hold on there.  Keep your shorts on.

#### The Legend

No, not my legend but THE legend.  Here are the terms we'll use throughout this chapter:

* Win7 = Windows 7
* Win8 = Windows 8
* GUI = Graphical User Interface or doing something *visually*
* CMD = Command Prompt (a standard DOS command prompt)
* PS = PowerShell 

#### Structuring and Organizing your Development Area

Before beginning any new development project it is important to determine the layout and structure of your working area.  If you are new to Ruby and Ruby on Rails it may be difficult to understand where to begin.  We can start with some simple basics relative to both Windows 7 and Windows 8.

#### Working with and setting up Environment Variables

I'm going to show you how to view/set your environment variables in three different modes:  GUI, CMD(dos), PS(powershell).

##### GUI View

Win7: Click Start > Type **environment** > select **Edit the system environment variables** > click the Environment Variables button

Win8: Press the Windows key on your keyboard > Type **environment** > select **system** > select **Edit the system environment variables** > click the Environment Variables button

<a href="http://www.flickr.com/photos/69355230@N03/10979785133/" title="gui_environment"><img src="http://farm8.staticflickr.com/7453/10979785133_66022415c8_c.jpg" width="800" height="466" alt="gui_environment"></a>

This environment variables window is divided into two sections (top/bottom) for User variables and System variables.  The system variables take place system wide regardless of which users are logged in.  The user variables pertain only to the current user.  As you can see from the image, variables can be created, edited/modified right from this window.

##### Command Prompt

Win7: Click Start > Type **cmd** and hit the Enter key

Win8: Press the Windows key on your keyboard > Type **cmd** and hit the Enter key

* C:\Users\Joel>**set**
* C:\Users\Joel>**set _nameOfVariable_**

<a href="http://www.flickr.com/photos/69355230@N03/10979561275/" title="cmd_environment"><img src="http://farm4.staticflickr.com/3811/10979561275_c62d9ce40e_b.jpg" width="667" height="787" alt="cmd_environment"></a>

The command prompt allows you to find/retrieve your environment variables through the set command.  You can also use set to temporarily set an environment variable that will remain active _only_ while the current command window is open.  Once the window is closed, all variables set for that previously active session are no longer available.  In order to set permanent variables we can use the setx command.

##### PowerShell

Finding your environment variables in PowerShell is also relatively easy.  Go to Start > type powershell and open *Windows PowerShell*.  Type the following (in bold below):

* PS C:\Users\Joel> **cd env:**
* PS Env:\> **dir**

<a href="http://www.flickr.com/photos/69355230@N03/10979657776/" title="ps_environment"><img src="http://farm8.staticflickr.com/7405/10979657776_a86a6201eb_c.jpg" width="800" height="603" alt="ps_environment"></a>

PowerShell allows you to go straight to your environment path and view your variables similar to a directory structure.

