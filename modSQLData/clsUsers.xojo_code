#tag Class
Protected Class clsUsers
	#tag Property, Flags = &h0
		idUser As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaFirmy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaInventura As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaLogy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaPolozky As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaReporty As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaSmazat As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaUpravit As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PravaUzivatele As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		UserJmeno As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UserNick As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UserPass As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UserPrijmeni As String
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
			Name="idUser"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserNick"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserJmeno"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserPrijmeni"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserPass"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaFirmy"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaPolozky"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaInventura"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaReporty"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaUzivatele"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaLogy"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaUpravit"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PravaSmazat"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
