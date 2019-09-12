#tag Class
Protected Class TimeButton
Inherits BevelButton
	#tag Event
		Sub Action()
		  mTime.TotalSeconds = wTim.GetTime(mTime, Window.BackColor, Window.Left + Me.Left + 1, Window.Top + Me.Top + Me.Height).TotalSeconds
		  Caption = formattedTime(TimeFormat)
		  
		  Action(mTime)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  if mTime = nil then
		    mTime = new Date
		    mTime.TotalSeconds = (mTime.Hour * 3600) + (mTime.Minute * 60) + mTime.Second
		  end if
		  
		  Caption = formattedTime(TimeFormat)
		  Enabled = True
		  AcceptFocus = True
		  
		  Open
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function FormattedTime(Fmt As String) As String
		  dim ret As String
		  dim showam as boolean = false
		  dim hr As integer
		  
		  ret = Uppercase(Fmt)
		  
		  if InStr(ret, "AMPM") > 0 then
		    showam = True
		    ret = Replace(ret, "AMPM", "")
		  elseif InStr(ret,"AM") > 0 then
		    showam = True
		    ret = Replace(ret, "AM", "")
		  elseif InStr(ret,"PM") > 0 then
		    showam = True
		    ret = Replace(ret, "PM", "")
		  elseif InStr(ret,"AP") > 0 then
		    showam = True
		    ret = Replace(ret, "AP", "")
		  elseif InStr(ret,"A/P") > 0 then
		    showam = True
		    ret = Replace(ret, "A/P", "")
		  elseif InStr(ret,"AM/PM") > 0 then
		    showam = True
		    ret = Replace(ret, "AM/PM", "")
		  end if
		  
		  ret = ReplaceAll(ret, "H", "@") ' Hours = @
		  ret = ReplaceAll(ret, "M", "£") ' Minutes = £
		  ret = ReplaceAll(ret, "S", "$") ' Seconds = $
		  
		  // Deal with Hours
		  hr = mTime.Hour
		  
		  if showam then
		    if hr > 12 then
		      hr = hr - 12
		      ret = ret + "pm"
		    elseif hr > 11 then
		      ret = ret + "pm"
		    else
		      ret = ret + "am"
		    end if
		  end if
		  
		  if InStr(ret, "@@@") > 0 then
		    ret = Replace(ret, "@@@", Format(hr, "##00"))
		  elseif InStr(ret, "@@") > 0 then
		    ret = Replace(ret, "@@", Format(hr, "00"))
		  elseif InStr(ret, "@") > 0 then
		    ret = Replace(ret, "@", Format(hr, "#"))
		  end if
		  
		  // Deal with Minutes
		  if InStr(ret, "££") > 0 then
		    ret = Replace(ret, "££", Format(mTime.Minute, "00"))
		  elseif InStr(ret, "£") > 0 then
		    ret = Replace(ret, "£", Format(mTime.Minute, "#"))
		  end if
		  
		  // Deal with Seconds
		  if InStr(ret, "$$") > 0 then
		    ret = Replace(ret, "$$", Format(mTime.Second, "00"))
		  elseif InStr(ret, "$") > 0 then
		    ret = Replace(ret, "$", Format(mTime.Second, "#"))
		  end if
		  
		  return ret
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action(newTime As Date)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mTime As Date
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mTime = nil then
			    mTime = new Date
			    mTime.TotalSeconds = (mTime.Hour * 3600) + (mTime.Minute * 60) + mTime.Second
			  end if
			  
			  return mTime
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if mTime = nil then
			    mTime = new Date
			  end if
			  
			  mTime.TotalSeconds = value.TotalSeconds
			  Caption = formattedTime(TimeFormat)
			  Refresh
			  
			End Set
		#tag EndSetter
		Time As Date
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TimeFormat As String = "hh:mm:ss ap"
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
			Name="TimeFormat"
			Visible=true
			Group="Appearance"
			InitialValue="hh:mm:ss ap"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
