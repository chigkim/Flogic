JsOsaDAS1.001.00bplist00�Vscript_Vapp = Application.currentApplication()
app.includeStandardAdditions = true
se = Application("System Events")
if (se.applicationProcesses.whose({name:"VoiceOver"}).length == 0) {
app.displayAlert("Turn on VoiceOver", {message:"Please turn on VoiceOver to continue  installing.", as:"critical", buttons:["OK"]})
app.quit()
}

vo = Application("VoiceOver")
try {
vo.output("")
} catch(err) {
res = app.displayAlert("Error!", {message:"This installer requires VoiceOver to be controlled with AppleScript. To enable this, please go to the general tab of VoiceOver utility, and check the checkbox labeled 'Allow VoiceOver to be controld with AppleScript.' Then restart the  installer.", as:"critical", buttons:["Quit", "Open VoiceOver Utility"], defaultButton:"Open VoiceOver Utility"})
if (res["buttonReturned"] == "Open VoiceOver Utility") {
Application("VoiceOver Utility").activate()
}
app.quit()
}

try {
Application("Keyboard Maestro").version()
} catch (err) {
app.displayAlert("Keyboard Maestro Not Found!", {message:"Please install Keyboard Maestro, and restart the Installer.", as:"critical", buttons:["OK"]})
app.quit()
}

res = app.displayDialog("To continue with the installation click next.", {withTitle:"Flogic", buttons:["Cancel", "Next"], defaultButton:"Next", cancelButton:"Cancel"})
if (res["buttonReturned"] == "Cancel") {
app.quit()
}

vo.output("Please wait...")
flogic = app.pathTo(this, {as:"string"})+"Contents:Resources:Flogic.kmmacros"
km = Application("Keyboard Maestro")km.launch()km.setmacroenable("Clipboards", {enable:false})
km.setmacroenable("Switcher Group", {enable:false})km.deletemacrogroup("Flogic")km.deletemacrogroup("Flogic Inspector")km.importmacros(flogic)
km.setmacroenable("Flogic", {enable:true})
km.setmacroenable("Flogic Inspector", {enable:true})
delay(2)km.quit()delay(1)Application("Keyboard Maestro Engine").quit()delay(1)Application("Keyboard Maestro Engine").launch()
cmd = "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/system/burn complete.aif'"
app.doShellScript(cmd)
app.displayAlert("Installation is successfully completed.")                              ljscr  ��ޭ