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

* IDE and Text Editors
* VirtualBox
* PowerShell Scripting
* NuGet & Chocolatey
* Handling Proxies

### IDE or Text Editors

An IDE normally consists of a source code editor, build automation tools and a debugger. Several modern IDEs integrate with Intelli-sense coding features.  Editors are standard text or code editors that may or may not do additional tasks.  You could call some of the fancier editors hybrid IDE applications.  Some IDEs that are usable on Windows include RubyMine and Netbeans.  Both of these IDEs have extreme load times and tend to bottleneck resources.  

For our tutorials I recommend [Sublime Text 3] (http://www.sublimetext.com/3).  It is a very sophisticated and extremely easy to use editor that has very little resource usage.  

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

###### Foundation

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

### VirtualBox

TODO

### PowerShell Scripting

TODO

### NuGet & Chocolatey

TODO

### Handling Proxies

TODO

### Questions or related searches

[Stack Overflow:  Ruby on Windows] (http://stackoverflow.com/search?q=ruby+on+windows)
