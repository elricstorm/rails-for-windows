## Chapter 02:  Getting Started

Before continuing you should make sure you have all of the tools necessary to continue with the tutorials and documentation.  All of the utilities for the tutorials are free to download and free to use, with the exception of Sublime Text 3 should you use that as your editor.  Here is a list of recommended software:

* *[.NET Framework 4.5] (http://www.microsoft.com/en-us/download/details.aspx?id=30653)*
* PowerShell 2.0 or higher (recommended PS 4.0)
* Windows 7 or Windows 8 or Windows 8.1 (see **Chapter 03: Virtualization** for a free preview of Windows 8.1)
* *[7zip] (http://www.7-zip.org/download.html)*
* *[VirtualBox] (https://www.virtualbox.org/wiki/Downloads)* (if you plan on installing a VM)
* Text Editor (recommended [Sublime Text 3] (http://www.sublimetext.com/3))

That should get you started initially.  If you plan on doing manual installations later on, you can look at the pre-requisites in **Chapter 05: Manual Installations**.  Otherwise, no other software is required.  If you decide you don't want to use Sublime Text 3 but still want a solid free code editor, I recommend [SciTE] (http://www.scintilla.org/SciTE.html).

#### Setting Expectations

The topics we will discuss here are:

* VirtualBox
* Structuring and Organizing your Development Area
* IDE and Text Editors
* Handling Proxies

### [VirtualBox] (https://www.virtualbox.org/)

VirtualBox is a cross-platform virtualization application. What does that mean? For one thing, it installs on your existing Intel or AMD-based computers operating system. Secondly, it extends the capabilities of your existing computer so that it can run multiple operating systems (inside multiple virtual machines) at the same time. So, for example, you can run Windows 8, Windows 8.1 preview, and even Linux on your Windows PC, all alongside your existing applications. You can install and run as many virtual machines as you like -- the only practical limits are disk space and memory.

VirtualBox is free and the binaries are released under the terms of the GPL version 2 license.  Visit the [downloads] (https://www.virtualbox.org/wiki/Downloads) section to find the latest platform package for Windows hosts.

If you plan to not utilize virtualization in development, you can skip the download and install of VirtualBox.

Once installed you can read up on using VirtualBox by accessing the [User Manual] (http://dlc.sun.com.edgesuite.net/virtualbox/4.3.4/UserManual.pdf).  We will go over VirtualBox more in Chapter 3.

### Structuring and Organizing your Development Area

Before beginning any new development project it is important to determine the layout and structure of your working area.

##### Virtual or Local

VMs have their advantages.  The ability to build an environment in minutes, test or isolate application scenarios, and then break it all down in moments can be a wonderful thing. VMs operate independently and don't affect any local configurations at all.  If you plan on staying with a simple structured environment with very few base changes, you may decide to keep a local non-virtual environment.  If you plan on setting up a VM see **Chapter 03:**  **Virtualization** and then come back here.  Otherwise, let's continue on.

### Design your environment on paper

Sometimes the simplest approach to deciding where things are going to go and how things will work is just to take out a piece of paper and start writing your ideas down as a form of questions.

###### Questioning and Setting Your Own Expectations

     \> Are you planning on developing GUI tools or other apps with Ruby by itself?
     \> Are you planning to only use ruby on rails and work with web development?
     \> If web development is your focus, what type of stack do you want to build?
     \> Are there any special dependencies you need for your development stack?
     \> What editor or IDE do you want to use when coding or developing?
     \> Do you plan on using a VM for virtual developing?
     \> How do you plan on handling versioning and backups?
     \> If using databases, what type of database management system will you use?

This is a very simple list of questions that help you determine what things you may want to consider.  For instance, if you plan on developing GUI apps at some point, you might want to check out WxRuby widgets. You also may want to have a GitHub account for backing up and handling versioning.  Try to focus on core components and ideas pertaining to how you develop.  The pieces you need later to complete your website can be saved for another time.

You may want to also organize a checklist:

- [x] Install and use VirtualBox for VM management
- [x] Install and use a Windows 8.1 VM
- [x] Configure Windows PowerShell
- [ ] Install and use Chocolatey and NuGet for package management
- [ ] Install Ruby 2.0 using Chocolatey
- [ ] Install Rails 4.x using Chocolatey
- [ ] Install Uru for managing Ruby environments
- [ ] Install MySQL using Chocolatey for my Database Management
- [ ] Install and use Msysgit and GitHub
- [x] Install and use Sublime Text 3 as my code editor
- [ ] Set Windows Environment Paths for Ruby Path Extensions
- [ ] Set Windows Environment Paths for Gems
- [ ] Set Windows Environment Paths for Chocolatey

You don't have to do anything right now.  This is just an example list.  You may also want to determine if you would like to setup your directory structures a certain way.  Maybe you'd like everything that is tool related to automatically go in C:\tools\bin, or you might want to have a development library setup in C:\Development.

Take a few minutes to determine what you want.  If you don't know then you may want to **embrace the stack**.

###### Embracing the Stack

Don't know what you want?  That's fine.  Start with a default stack that someone else created for you.  A stack can be a number of items that form a working environment.  An example stack might be:

* Windows 8.1
* Ruby 2.0
* Rails 4.0
* Mongrel
* RubyMine IDE
* MongoDB
* Rspec | Cucumber Testing

This is just a base example.  You start with someone else's idea in a VM test environment, play with it, get to know it, and then decide what you like the most.  You can then test other stacks until you find a good mix and match of development style that fits your own.  Then create your own stack!  This is one reason why a VM may be one of the best options to go as it provides very good flexibility.


### IDE or Text Editors

An IDE normally consists of a source code editor, build automation tools and a debugger. Several modern IDEs integrate with Intelli-sense coding features.  Editors are standard
text or code editors that may or may not do additional tasks.  You could call some of the fancier editors hybrid IDE applications.  Some IDEs that are usable on Windows
include RubyMine and Netbeans.  Both of these IDEs have extreme load times and tend to bottleneck resources.

For our tutorials I recommend [Sublime Text 3] (http://www.sublimetext.com/3).  It is a very sophisticated and extremely easy to use editor that has very little resource usage.

     NOTE:  If you plan on using a VM, you can come back to these instructions after you've created your VM and installed Sublime Text 3 on it instead.  Otherwise, if you're doing this locally and without a VM you can finish the setup configuration below:

After you have sublime text 3 downloaded and running, do the following:

Setup Package Control.

     Click CTRL + ~

Copy and Paste the following below into the console and hit enter.

     import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())

Close and restart Sublime Text 3.  Next, let's add some packages to make it look more friendly:

     Click Preferences > Package Control > Install Package
     Type Soda theme and click to install.
     .. repeat and type RailsCasts color and click to install this theme.
     .. repeat and type All Autocomplete and click to install.
     .. repeat and type BeautifyRuby and click to install.
     .. repeat and type Better Coffeescript and click to install.
     .. repeat and type ChangeQuotes and click to install.
     .. repeat and type SideBarEnhancements and click to install.
     .. repeat and type GitGutter and click to install.

Edit your user preferences:

     Click Preferences > Settings-User

Copy and paste in the settings from [sublime-preferences] (http://elricstorm.viewdocs.io/rails-for-windows/sublime-preferences).  Also, you may want to change/edit the ignored words.  I threw in a couple of words for fun.

Next, download the [Inconsolata font] (http://www.levien.com/type/myfonts/inconsolata.html).  It's a great font for developing and coding.  Use the .otf version and once you download it, just click and install it.  It's that easy.  Now then, restart sublime text 3 and you should see everything looks pretty solid.  Good job!

##### [Zurb Foundation] (http://foundation.zurb.com/)

If you are planning on using Zurb Foundation in your rails project, I would recommend importing some of foundation's sublime 3 snippets:

From a cmd prompt:

     cd "%AppData%\Sublime Text 3\Packages\User"
     git clone https://github.com/zurb/foundation-5-sublime-snippets.git

* Each snippet is prefixed with zf- (ZURB Foundation).
* Each snippet is singular, unless the name of the component ends in an s (offcanvas)
* Available classes are included as comments in the snippets

Available Components Offcanvas:

    zf-topbar + tab
    zf-sidenav + tab
    zf-subnav + tab
    zf-breadcrumb + tab
    zf-pagination + tab
    zf-orbit + tab
    zf-clearing + tab
    zf-button + tab
    zf-button-group + tab
    zf-split-button + tab
    zf-dropdown-button + tab
    zf-reveal + tab
    zf-alert + tab
    zf-panel + tab
    zf-pricing-table + tab
    zf-progress-bar + tab
    zf-accordion + tab
    zf-tab + tab
    zf-vertical-tab + tab

Once imported, restart Sublime and then go to Tools > Snippets.  Type in **zf** to see a full list of foundation quick actions.  These will allow you to quickly create foundation classes.  Test it out in an erb or html file.

### Handling Proxies

If you are operating behind a proxy (at work for example) and encounter any type of download/setup issue going forward, you may need to add a proxy to your local path.  To
add a proxy, do the following from an elevated CMD prompt as an administrator:

     C:\> setx HTTP_PROXY "http://yourproxy:port" (ex: ascproxy:80)
     C:\> setx HTTPS_PROXY "https://yourproxy:port" (use this command instead of HTTP if your work is using an HTTPS proxy instead - not usually the case)

### Questions or related searches

[Stack Overflow:  Ruby on Windows] (http://stackoverflow.com/search?q=ruby+on+windows)
