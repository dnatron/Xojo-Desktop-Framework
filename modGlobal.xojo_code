#tag Module
Protected Module modGlobal
	#tag Method, Flags = &h0
		Sub AppendArray(Extends arr() As String, sourceArr() As String)
		  For i As Integer = 0 To sourceArr.Ubound
		    arr.Append sourceArr( i )
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  'Sub Open() 
		  'Me.AddRow "Hello" // Add some text.
		  'Me.Cell(Me.LastIndex,1)="World" // Add text to second column
		  '
		  'Me.CellTag(Me.LastIndex,0) = &cFFCCCC // 1. column red
		  'Me.CellTag(Me.LastIndex,1) = &cCCFFCC // 2. column green
		  'Me.CellTag(Me.LastIndex,2) = &cCCCCFF // 3. column blue
		  'End Sub
		  
		  'If row >= Me.ListCount Then
		  '// empty area. We simply make all rows gray
		  '
		  'g.ForeColor = &cCCCCCC
		  'g.FillRect 0,0,g.Width,g.Height
		  'Return true
		  '
		  'elseif row <> me.ListIndex then // if not selected line (selected is blue)
		  '
		  '// Get color from celltag and use it
		  'dim c as color = me.CellTag(Row,column)
		  '
		  'g.ForeColor = c
		  'g.FillRect 0,0,g.Width,g.Height
		  'Return true
		  'end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DateDaysInMonth(vDatum As String) As Integer
		  d2 = New date
		  d2.SQLDate = vDatum
		  d2.day=1 //dny vynuluje na prvniho
		  d2.month=d2.month+1
		  d2.day=d2.day-1
		  
		  Return d2.day
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EmailFilter(Source as string) As Boolean
		  Dim result As String
		  dim zavinac as integer = 0
		  dim tecka as Integer = 0
		  for i as integer = 1 to len(Source)
		    if InStr("1234567890.@-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnoprsqtuvwxyz", source.Mid(i, 1)) >0 then
		      result = result + source.Mid(i, 1)
		      if  source.Mid(i, 1) = "@" then
		        zavinac = zavinac + 1
		      end if
		      if  source.Mid(i, 1) = "." then
		        tecka = tecka + 1
		      end if
		    end if
		  next
		  If Source = "" or Source <> result or zavinac <> 1 or tecka < 1 Then
		    'MsgBox "Please insert right Email adress."
		    Return False
		  Else
		    Return True 
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MB(txt As String)
		  if modLog.LogOnOff  = True then MsgBox txt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NumberFilter(Source as string) As Boolean
		  Dim result As String
		  for i as integer = 1 to len(Source)
		    If InStr("-1234567890", source.Mid(i, 1)) >0 Then
		      result = result + source.Mid(i, 1)
		    end if
		  Next
		  
		  If Source <> result Or Source = "" Then
		    Return False
		  Else
		    Return True
		  End If
		  
		  
		   
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterXojoPlugins()
		  '#If TargetMacOS Then
		  'XLBookMBS.SetKeyGlobal ("Petr Klokočník", "windows-262f2b0707cae80d61bc6669afk2idk0")
		  '#ElseIf TargetWindows Then
		  'XLBookMBS.SetKeyGlobal ("Petr Klokočník", "windows-262f2b0707cae80d61bc6669afk2idk0")
		  '#ElseIf TargetLinux Then
		  'XLBookMBS.SetKeyGlobal ("Petr Klokočník", "windows-262f2b0707cae80d61bc6669afk2idk0")
		  '#EndIf
		  'MBS v18 do 2018-10
		  If Not registerMBSPlugin("Christophe De Vocht", "MBS Complete", 201810, "KR0R3JxkO+867o7+t8UM++Tc1aBcCjypXokIY0At9BkjsaCLWzU2Id0Upt7fELZ=") Then
		    MsgBox "MBS Plugin serial not valid?"
		  End If 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WasDoubleClick() As boolean
		  Dim doubleClickTime As Integer
		  
		  #if TargetCocoa then
		    doubleClickTime=30
		  #elseif TargetCarbon then
		    #if not TargetMachO then
		      Declare Function GetDblTime Lib "CarbonLib" () as Integer
		      doubleClickTime = GetDblTime()
		    #else
		      Declare Function GetDblTime Lib "Carbon" () as Integer
		      doubleClickTime = GetDblTime()
		    #endif
		  #elseif TargetMacOS then
		    Declare Function GetDblTime Lib "InterfaceLib" () as Integer
		    doubleClickTime = GetDblTime()
		  #elseif TargetWin32 then
		    Declare Function GetDoubleClickTime Lib "User32.DLL" () as Integer
		    doubleClickTime = GetDoubleClickTime() / 1000 * 60
		  #endif
		  
		  If (Ticks - mLastClickTicks) <= doubleClickTime Then
		    return true
		  end if
		  mLastClickTicks = Ticks
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		celkem As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		cislo As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		cislo2 As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected clsUserInfo1 As clsUserInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		d As date
	#tag EndProperty

	#tag Property, Flags = &h0
		d2 As date
	#tag EndProperty

	#tag Property, Flags = &h0
		e As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		e2 As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		i As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		i2 As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		mLastClickTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pocet As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		TestModeOnOf As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		txt1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		txt2 As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cislo"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pocet"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="celkem"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="txt1"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="txt2"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="i"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="e"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLastClickTicks"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cislo2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="i2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="e2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestModeOnOf"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
