JsOsaDAS1.001.00bplist00�Vscript_app = Application.currentApplication()
app.includeStandardAdditions = true
flogic = app.pathTo(this, {as:"string"})+"Contents:Resources:Flogic.kmmacros"
km = Application("Keyboard Maestro")km.launch()km.setmacroenable("Clipboards", {enable:false})
km.setmacroenable("Switcher Group", {enable:false})km.deletemacrogroup("Flogic")km.deletemacrogroup("Flogic Inspector")km.importmacros(flogic)
delay(2)km.quit()delay(1)Application("Keyboard Maestro Engine").quit()delay(1)Application("Keyboard Maestro Engine").launch()                              $jscr  ��ޭ