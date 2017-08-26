# Flogic
## Welcome to Flogic
Keyboard Maestro Macros for Voiceover users using Logic Pro x

*WARNING*: USE AT YOUR OWN RISK! This is in alpha cycle. Many things may not work and change frequently without notice.

Flogic is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY, expressed or implied, of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. Please see the [GNU General Public License](http://www.gnu.org/licenses/) for more details.

Flogic is exclusively developed and supported by volunteers. Please consider contributing to the project. There are many ways you can contribute even without knowledge in programming. Examples include:
* Documentation
* Proof reading
* Tutorials
* Testing
* Ideas
* Scripting

## Installation
Flogic relies on a third party program called Keyboard Maestro to perform its functions. Download instructions for Keyboard Maestro are below.

### Keyboard Maestro Installation
* [Download the Keyboard Maestro](https://www.keyboardmaestro.com/).
* Copy the Keyboard Maestro application from the downloads folder to the applications folder. From there, open Keyboard Maestro.
* If using Keyboard Maestro for the first time, please check the boxes for both Keyboard Maestro and Keyboard Maestro Engine in system preferences, under "Security and Privacy", "Accessibility." These must be enabled for Flogic to function correctly.
* Open Keyboard Maestro Preferences, and under the general tab, check the box labeled, "Start Keyboard Maestro Engine at log-in." Note that the Keyboard Maestro window does not need to be open for the scripts to run.

### Important Notes about Keyboard Maestro
Keyboard Maestro contains some default macro groups that conflict with common Mac OS keyboard shortcuts. These are found in the switcher group, and clipboard group, which are disabled by default after installing Flogic. If you choose to reenable them, you can do so by selecting each group and pressing the enable button.

Keyboard Maestro is limited by a 30-day trial period. After this time, a purchase of a one-time license is required to continue using the program, and subsequently, Flogic.

More information about purchasing a license can be found [here.](https://wiki.keyboardmaestro.com/manual/Purchase)

### Installing Flogic
* [Download the latest version of the Flogic](https://codeload.github.com/chigkim/Flogic/zip/master) and save it to your hard drive where you can easily find it.
* Run the installer.
* make sure two macro groups have been created (Flogic and Flogic Inspector with a few macros in them.
* Open VoiceOver Utility and check "Allow VoiceOver to be controlled with AppleScript" in the General category.

### Logic Configuration
* Make sure main window of Logic Pro X is open.
* Make sure toolbar is shown and select custom from display mode
* Make sure inspector and tracks groups are shown in the main window

## Getting Started
Please note: Some of the commands has single/double taps (presses).

### Main Shortcuts
* Toggle Flogic inspector: shift+slash. *please note* that some of Logic's keyboard shortcuts may not be available when Flogic inspector is turned on. To re-enable Logic's keyboard shortcuts, toggle Flogic Inspector off.
* Speak playhead position: command+f1
* Speak left locator: command+f2
* Speak right locator: command+f3
* Speak alternate playhead position: command+f4
* Speak/select division value: command+f6
* Speak/select display mode: command+f12
* Toggle/Speak cycle: control+shift+c
* Speak muted tracks/unmute all tracks: option+shift+m
* Speak soloed tracks/unsolo all tracks: option+shift+s
* Speak Input Monitor Enabled Tracks/Disable Input Monitor All Tracks: option+shift+i
* Speak Record Enabled Tracks/Record Disable All Tracks (not working properly): option+shift+r
* Increase/decrease pan: command+left/right
* Increase/decrease volume (not working properly): command+up/down

### Inspector Shortcuts
Note: The following shortcuts only work when you have Flogic Inspector enabled with shift+slash as well as inspector shown in the main window.

* Speak/toggle mute: m, press twice quickly to mute or unmute.
* Speak/toggle solo: s, press twice quickly to solo or unsolo.
* Speak current track: t
* Speak selected region: r
* Speak/reset clip level: l
* Speak/select input: i
* Speak/select output: o
* Speak/select preset: p
* Speak/select group: g
* Speak volume: v (not working)
* Speak pan: n

## Misc

### Changing Shortcuts
The shortcuts outlined above are the default assignments for Flogic. They may be changed based on personal preference, however, when Flogic is updated, the shortcuts will revert back to their default assignments. To  change a shortcut, open Keyboard Maestro and do the following:

* Go to the view menu, and select "start editing macros."
* Find the Macro Groups scroll area and interact with it. Inside, find and select the appropriate macro group by pressing VO space on it.
* Stop interacting with this area and move to the right to the macros scroll area.
* Interact, and find the macro with the desired shortcut  to change. Press VO space to select it, and press tab. This should move the VoiceOver Cursor  inside the edit screen of the macro.
* Press VO right arrow to the  button labeled with the current shortcut for the script.
* Simply type the new desired shortcut and then stop interacting with the edit area. Be careful not to press command tab here, as this will assign it self as a new shortcut.

### Reporting Issues
GitHub provides a convenient and reliable way to track and resolve issues. Please click [here,](https://github.com/chigkim/flogic/issues) and search for your issue. If you don't find an open issue relating to your problem, you can create a new one by clicking on "new issue" and filling out the required fields.

Before reporting an issue, please check that the item being queried by Flogic is visible on the screen if Flogic is not functioning as expected. For example, if t is pressed to report current track name and nothing is spoken, make sure that inspector is shown before reporting this as an FLogic issue.

### Generating A Report
When troubleshooting a problem, it might occasionally be necessary to have Keyboard Maestro generate a report when a script fails. By default, Flogic will ignore errors but, for diagnostic purposes, it might be necessary to provide those results to the Flogic team. Follow these steps to generate the error message:

* In Keyboard Maestro, navigate to the macro that appears to be malfunctioning and click once on the macro.
* Press Tab once and you'll be placed in the Macro Edit Detail Scroll Area. Use VoiceOver to navigate over to the Execute Java script for Automation Action Group.
* Interact with the action group and navigate over to the pop-up menu that says, "Ignore Results" and change this option to "Display Results in a Window."
* Return to Logic and try launching the macro again. If there's an error with the script, Keyboard Maestro will open a new window with the error result. It might look something like this:  
/var/folders/lf/hwjp9syx5ll56brrkhgr818w0000gn/T/Keyboard-Maestro-Script-7640162F-37E6-49B9-AF85-02762D598028:243:339: execution error: Error on line 10: Error: Can't get object. (-1728)
* With the error message open, press Command-a to select the message and press Command-c to copy it. 

The Flogic team will use this information to determine what the problem and solution might be. You might be asked to make a change to your system or session file to troubleshoot further. Once the issue is identified and/or resolved, you can change the results preference in the action group back to "Ignore Results."
