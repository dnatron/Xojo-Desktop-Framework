#tag Class
Protected Class DateButton
Inherits BevelButton
	#tag Event
		Sub Action()
		  mDate.TotalSeconds = wCal.GetDate(mDate, Window.BackColor, Window.Left + Me.Left + 1, Window.Top + Me.Top + Me.Height).TotalSeconds
		  Caption = formattedDate(DateFormat)
		  
		  Action(mDate)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  if mDate = nil then
		    Setup
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function FormattedDate(Fmt As String) As String
		  ' Format Values to use.
		  ' Send as follows:
		  '
		  '      TDateControl.FormattedDate("yyyy-mmm-dd nn")
		  '
		  ' ----------------------------------------------------------------
		  ' Send      Result
		  ' ----------------------------------------------------------------
		  ' n            Mon, Tue, Wed, Thu, Fri, Sat, Sun
		  ' nn          Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
		  ' d            Day in short numeric (i.e. 3 is "3")
		  ' dd          Day in "00" numeric (i.e. 3 is "03")
		  ' ddd        Day with speech (i.e. 3 is 3rd, 1 is 1st, 18 is 18th)
		  ' m           Month in short numeric (i.e. 3 is "3")
		  ' mm        Month in "00" numeric (i.e. 3 is "03")
		  ' mmm     Jan, Feb, Mar ...
		  ' mmmm  January, February, March ...
		  ' yy          Two digit year (i.e. 2012 is "12")
		  ' yyyy       Four digit year (i.e. 2012 is "2012")
		  ' h            Hour in short format (i.e. 9 is "9")
		  ' hh          Hour in long format (i.e. 9 is "09")
		  ' tt            Minutes
		  ' ss           Seconds
		  ' ap           AM/PM indicator (i.e. "am" or "pm")
		  ' ----------------------------------------------------------------
		  
		  if UBound(LongMonths) < 11 then
		    SetupDaysMonths
		  end if
		  
		  dim ret As String
		  dim apind As boolean = False
		  
		  ret = Uppercase(Fmt)
		  
		  // Change Characters
		  ret = ReplaceAll(ret, "Y", "@")
		  ret = ReplaceAll(ret, "M", "£")
		  ret = ReplaceAll(ret, "D", "$")
		  ret = ReplaceAll(ret, "N", "%")
		  ret = ReplaceAll(ret, "H", "^")
		  ret = ReplaceAll(ret, "T", "&")
		  ret = ReplaceAll(ret, "S", "*")
		  ret = ReplaceAll(ret, "AP", "±")
		  
		  if Instr(ret, "±") > 0 then
		    apind = True
		  end if
		  
		  // Hour stuff
		  dim h1 As Integer = mDate.Hour
		  
		  if h1 >= 12 then
		    ret = Replace(ret, "±", "pm")
		  else
		    ret = Replace(ret, "±", "am")
		  end if
		  
		  if apind then
		    if h1 > 12 then
		      h1 = h1 - 12
		    end if
		    if h1 = 0 then
		      h1 = 12
		    end if
		  end if
		  
		  if InStr(ret, "^^") > 0 then
		    ret = Replace(ret, "^^", Format(h1, "00"))
		  elseif InStr(ret, "^") > 0 then
		    ret = Replace(ret, "^", Format(h1, "##"))
		  end if
		  
		  // Minute stuff
		  if InStr(ret, "&&") > 0 then
		    ret = Replace(ret, "&&", Format(mDate.Minute, "00"))
		  end if
		  
		  // Seconds stuff
		  if InStr(ret, "**") > 0 then
		    ret = Replace(ret, "**", Format(mDate.Second, "00"))
		  end if
		  
		  // Year Stuff
		  if InStr(ret, "@@@@") > 0 then
		    ret = Replace(ret, "@@@@", Format(mDate.Year, "####"))
		  elseif InStr(ret, "@@") > 0 then
		    ret = Replace(ret, "@@", Mid(Format(mDate.Year, "####"), 3, 2))
		  end if
		  
		  // Month Stuff
		  if InStr(ret, "££££") > 0 then
		    ret = Replace(ret, "££££", LongMonths(mDate.Month - 1))
		  elseif InStr(ret, "£££") > 0 then
		    ret = Replace(ret, "£££", ShortMonths(mDate.Month - 1))
		  elseif InStr(ret, "££") > 0 then
		    ret = Replace(ret, "££", Format(mDate.Month, "00"))
		  elseif InStr(ret, "£") > 0 then
		    ret = Replace(ret, "£", Str(mDate.Month))
		  end if
		  
		  // Day Stuff
		  if InStr(ret, "$$$") > 0 then
		    dim s1 As String = Str(mDate.Day)
		    if mDate.Day >= 10 and mDate.Day <= 13 then
		      s1 = s1 + "th"
		    else
		      select case Right(s1, 1)
		      case "1"
		        s1 = s1 + "st"
		      case "2"
		        s1 = s1 + "nd"
		      case "3"
		        s1 = s1 + "rd"
		      else
		        s1 = s1 + "th"
		      end select
		    end if
		    ret = Replace(ret, "$$$", s1)
		  elseif InStr(ret, "$$") > 0 then
		    ret = Replace(ret, "$$", Format(mDate.Day, "00"))
		  elseif InStr(ret, "$") > 0 then
		    ret = Replace(ret, "$", Str(mDate.Day))
		  end if
		  
		  if UBound(LongMonths) < 11 then
		    SetupDaysMonths
		  end if
		  
		  // Day String Stuff
		  if InStr(ret, "%%") > 0 then
		    ret = Replace(ret, "%%", LongDayStr(mDate.DayOfWeek-1))
		  elseif InStr(ret, "%") > 0 then
		    ret = Replace(ret, "%", ShortDayStr(mDate.DayOfWeek-1))
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Setup()
		  mDate = new Date
		  mDate.Hour = 0
		  mDate.Minute = 0
		  mDate.Second = 0
		  SetupDaysMonths
		  Caption = formattedDate(DateFormat)
		  Enabled = True
		  AcceptFocus = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetupDaysMonths(optional Language As String = "E")
		  select case Language
		  case "E"
		    LongMonths = Array("January","February","March","April","May","June","July","August","September","October","November","December")
		    ShortMonths = Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
		    LongDayStr =Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
		    ShortDayStr =Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat")
		  case "S"
		    LongMonths = Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Augosto","Septiembre","Octubre","Noviembre","Diciembre")
		    ShortMonths = Array("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic")
		    LongDayStr =Array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado")
		    ShortDayStr =Array("Dom","Lun","Mar","Mie","Jue","Vie","Sab")
		  end Select
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action(newDate As Date)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mDate = nil then
			    Setup
			  end if
			  
			  return mDate
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if mDate = nil then
			    Setup
			  end if
			  
			  mDate.TotalSeconds = value.TotalSeconds
			  mDate.Hour = 0
			  mDate.Minute = 0
			  mDate.Second = 0
			  Caption = formattedDate(DateFormat)
			  Refresh
			  
			End Set
		#tag EndSetter
		Date As Date
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		DateFormat As String = "dd-mmm-yyyy"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LongDayStr(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LongMonths(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDate As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ShortDayStr(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ShortMonths(-1) As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="60"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionAlign"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Flush Left"
				"1 - Flush Right"
				"2 - Sys Direction"
				"3 - Center"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionPlacement"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Sys Direction"
				"1 - Normally"
				"2 - Right of Graphic"
				"3 - Left of Graphic"
				"4 - Below Graphic"
				"5 - Above Graphic"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionDelta"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconAlign"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Sys Direction"
				"1 - Center"
				"2 - Left"
				"3 - Right"
				"4 - Top"
				"5 - Bottom"
				"6 - TopLeft"
				"7 - BottomLeft"
				"8 - TopRight"
				"9 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconDX"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconDY"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bevel"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Small Bevel"
				"1 - Normal Bevel"
				"2 - Large Bevel"
				"3 - Rounded Bevel"
				"4 - No Bevel"
				"5 - Round"
				"6 - Large Round"
				"7 - Disclosure"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasMenu"
			Visible=true
			Group="Appearance"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - No Menu"
				"1 - Normal Menu"
				"2 - Menu on Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackColor"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			Type="Color"
			EditorType="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			Type="Color"
			EditorType="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Visible=true
			Group="Initial State"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuValue"
			Visible=true
			Group="Initial State"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonType"
			Visible=true
			Group="Behavior"
			Type="integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Button"
				"1 - Toggles"
				"2 - Sticky"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			Type="string"
			EditorType="string"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			Type="single"
			EditorType="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inches"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="boolean"
			EditorType="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="boolean"
			EditorType="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="boolean"
			EditorType="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DateFormat"
			Visible=true
			Group="Appearance"
			InitialValue="dd-mmm-yyyy"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
