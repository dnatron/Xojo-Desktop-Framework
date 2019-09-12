#tag Module
Protected Module modLog
	#tag Method, Flags = &h0
		Sub addTestText(txt As String)
		  If modLog.LogOnOff = True Then
		    TestText = TestText + GetTick+ " " + txt + EndOfLine
		    If TestText.Len > LogLenght Then 
		      TestText = TestText.Right(LogLenght)
		    End If
		    If TargetWindows Then Win1.ccLogs1.txaTestText.Text = TestText
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addTestTextDB(txt As String)
		  If modLog.LogOnOff = True Then
		    TestTextDB = TestTextDB + GetTick+ " " + txt + EndOfLine
		    If TestTextDB.Len > LogLenght Then 
		      TestTextDB = TestTextDB.Right(LogLenght)
		    End If
		    If TargetWindows Then Win1.ccLogs1.txaTestTextDB.Text = TestTextDB
		  EnD If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addTestTextIn(txt As String)
		  If modLog.LogOnOff = True Then
		    TestTextIn = TestTextIn + GetTick+ " "+ txt + EndOfLine
		    If TestTextIn.Len > LogLenght Then 
		      TestTextIn = TestTextIn.Right(LogLenght)
		    End If
		    If TargetWindows Then Win1.ccLogs1.txaTestTextIn.Text = TestTextIn
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addTestTextOut(txt As String)
		  If modLog.LogOnOff = True Then
		    TestTextOut = TestTextOut + GetTick+ " "+ txt + EndOfLine
		    If TestTextOut.Len > LogLenght Then 
		      TestTextOut = TestTextOut.Right(LogLenght)
		    End If
		    If TargetWindows Then Win1.ccLogs1.txaTestTextOut.Text = TestTextOut
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTick() As String
		  Dim d As Xojo.Core.Date = Xojo.Core.Date.Now
		  myTick = d.Nanosecond/1000000
		  Dim sekundy As Integer =d.Second
		  Dim minuty As Integer =d.Minute
		  Dim hodiny As Integer =d.Hour
		  
		  Return Str(hodiny)+":"+Str(minuty)+" "+Str(sekundy)+"s "+Str(myTick)+"ms "
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		LogLenght As Integer = 2000
	#tag EndProperty

	#tag Property, Flags = &h0
		LogOnOff As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		myTick As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		myTickStart As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TestText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TestTextDB As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TestTextIn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TestTextOut As String
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
			Name="TestTextIn"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestTextOut"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestTextDB"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="myTick"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="myTickStart"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LogOnOff"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestText"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LogLenght"
			Group="Behavior"
			InitialValue="2000"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
