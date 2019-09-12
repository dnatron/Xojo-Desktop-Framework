#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim d As Xojo.Core.Date = Xojo.Core.Date.Now
		  modLog.myTickStart = d.Nanosecond/1000000
		  
		  modGlobal.RegisterXojoPlugins
		  
		  modGlobal.TestModeOnOf = True
		  modLog.LogOnOff = True
		  modLog.LogLenght = 10000 // kolik znaku ma info text
		  
		  If DebugBuild = True Then //ToDo mozna v OSX bude cesta jina
		    modDB.DBlite_Folder = GetFolderItem("c:\FXTC_Q\_Programing\Framework\DB_SQLite.sqlite")
		  Else
		    modDB.DBlite_Folder = GetFolderItem("DB_SQLite.sqlite")
		  End If
		  
		  modLog.addTestText("START SYSTEM :)")
		  modLog.addTestTextDB("START SYSTEM :)")
		  modLog.addTestTextIn("START SYSTEM :)")
		  modLog.addTestTextOut("START SYSTEM :)")
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		  
		End Sub
	#tag EndEvent


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
