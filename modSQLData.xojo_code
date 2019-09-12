#tag Module
Protected Module modSQLData
	#tag Method, Flags = &h0
		Sub L_Users()
		  Redim clsUsers1(-1)
		  
		  sql="SELECT dbo.SkladUser.idUser, dbo.SkladUser.UserNick, dbo.SkladUser.UserJmeno, dbo.SkladUser.UserPrijmeni, dbo.SkladUser.UserPass,"_
		  +" dbo.SkladUser.PravaFirmy, dbo.SkladUser.PravaPolozky, dbo.SkladUser.PravaInventura, dbo.SkladUser.PravaReporty,"_
		  +" dbo.SkladUser.PravaUzivatele, dbo.SkladUser.PravaLogy, dbo.SkladUser.PravaUpravit, dbo.SkladUser.PravaSmazat"_
		  +" FROM dbo.SkladUser"
		  
		  'sql = DefineEncoding(sql, Encodings.WindowsLatin2 )
		  rs = modDB.DbSelect("default",sql)
		  
		  cislo = 0
		  If rs <> Nil Then
		    While Not rs.EOF
		      cislo = cislo+1
		      Dim clsUsers As New clsUsers
		      clsUsers.idUser = rs.Field("idUser").IntegerValue
		      clsUsers.UserNick = rs.Field("UserNick").StringValue
		      clsUsers.UserJmeno = rs.Field("UserJmeno").StringValue
		      clsUsers.UserPrijmeni = rs.Field("UserPrijmeni").StringValue
		      clsUsers.UserPass = rs.Field("UserPass").StringValue
		      clsUsers.PravaFirmy = rs.Field("PravaFirmy").IntegerValue
		      clsUsers.PravaPolozky = rs.Field("PravaPolozky").IntegerValue
		      clsUsers.PravaInventura = rs.Field("PravaInventura").IntegerValue
		      clsUsers.PravaReporty = rs.Field("PravaReporty").IntegerValue
		      clsUsers.PravaUzivatele = rs.Field("PravaUzivatele").IntegerValue
		      clsUsers.PravaLogy = rs.Field("PravaLogy").IntegerValue
		      clsUsers.PravaUpravit = rs.Field("PravaUpravit").IntegerValue
		      clsUsers.PravaSmazat = rs.Field("PravaSmazat").IntegerValue
		      
		      clsUsers1.Append(clsUsers)
		      
		      rs.MoveNext
		    Wend
		    rs.Close
		  End If
		  modLog.addTestTextIn("rowNr - " + Str(cislo))
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		clsUsers1() As clsUsers
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
	#tag EndViewBehavior
End Module
#tag EndModule
