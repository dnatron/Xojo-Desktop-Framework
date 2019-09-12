#tag Module
Protected Module modDB
	#tag Method, Flags = &h0
		Function DbConnect(vType As String) As Boolean
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Select Case vType
		    'Case "MSSQL" ////////////////////////////////////////////////////////// MS SQL /////////////////////////////////////////////////////////////////
		    'DB_MSSQL = New MSSQLServerDatabase
		    'DBType = "MSSQL"
		    '
		    'DB_MSSQL.Host = modDB.DBSetHost
		    'DB_MSSQL.UserName =modDB.DBSetUser
		    'DB_MSSQL.Password = modDB.DBSetPass
		    'DB_MSSQL.DatabaseName = modDB.DBSetDbName
		    'modLog.addTestTextDB("DB MSSQL : DbSettup")
		    '
		    'DB_MSSQL.Host = "FXTC-PC\SQLEXPRESS" //nebo IP
		    ''DB.UserName = "mfgdatauser"
		    ''DB.Password = "mfgdatauser"
		    'DB_MSSQL.DatabaseName = "dbTestSamir"  'dbTestSamir master dbMFGdata
		    'modLog.addTestTextDB("DB MSSQL:")
		    'If DB_MSSQL.Connect Then //connect
		    'modLog.addTestTextDB(" Connected")
		    'DB_OnOFF = true
		    'Else
		    'modLog.addTestTextDB(" Error connecting " + DB_MSSQL.ErrorMessage)
		    'If TargetDesktop Then MsgBox (" Error connecting " + DB_MSSQL.ErrorMessage)
		    'DB_OnOFF = False
		    'Return False
		    'End If
		    'If DB_MSSQL.Error Then
		    'modLog.addTestTextDB( "checkDBConn Error: " + DB_MSSQL.ErrorMessage)
		    'If TargetDesktop Then MsgBox ( "checkDBConn Error: " + DB_MSSQL.ErrorMessage)
		    'Return False
		    'End If
		    '
		    'Return False
		    
		  Case "mySQL" ////////////////////////////////////////////////////////// MySQL //////////////////////////////////////////////////////////////////
		    DB_mySQL = New MySQLCommunityServer
		    DBType = "mySQL"
		    
		    DB_mySQL.Host = DBSetHost
		    DB_mySQL.Port = DBSetPort
		    DB_mySQL.UserName = DBSetUser
		    DB_mySQL.Password = DBSetPass
		    DB_mySQL.DatabaseName = DBSetDbName  
		    DB_mySQL.SQLExecute("SET NAMES utf8")
		    DB_mySQL.SQLExecute("SET CHARACTER SET utf8")
		    modLog.addTestTextDB("DB mySQL:")
		    
		    If DB_mySQL.Connect Then //connect
		      modLog.addTestTextDB(" Connected")
		      DB_OnOFF = true
		    Else
		      modLog.addTestTextDB(" Error connecting " + DB_mySQL.ErrorMessage)
		      If TargetDesktop Then MsgBox (" Error connecting " + DB_mySQL.ErrorMessage)
		      DB_OnOFF = False
		      Return False
		    End If
		    If DB_mySQL.Error Then
		      modLog.addTestTextDB( "checkDBConn Error: " + DB_mySQL.ErrorMessage)
		      If TargetDesktop Then MsgBox ( "checkDBConn Error: " + DB_mySQL.ErrorMessage)
		      Return False
		    End If
		    
		    Return True
		    
		  Case "SQLite"
		    
		  End Select
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DbConnectRun()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  //Zde zadat funkce ktere se spusti pri pripojeni k DB
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DbDisconnect(vType As String)
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Select Case vType
		    'Case "MSSQL" ////////////////////////////////////////////////////////// MS SQL /////////////////////////////////////////////////////////////////
		    'modLog.addTestTextDB("MSSQL Closed")
		    'DB_MSSQL.Close
		    
		    
		  Case "mySQL" ////////////////////////////////////////////////////////// MySQL //////////////////////////////////////////////////////////////////
		    modLog.addTestTextDB("mySQL Closed")
		    DB_mySQL.Close
		    
		  Case "SQLite"
		    modLog.addTestTextDB("SQLite Closed")
		    DB_SQLite.Close
		    
		  End Select
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DbDisconnectRun()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  //Zde zadat funkce ktere se spusti po odpojeni z DB
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DbExecute(vType As String, vSql As String)
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modLog.addTestTextDB("DB Execute Start")
		  modLog.addTestTextDB (vSql)
		  
		  If vType = "default" Then vType = modDB.DBType
		  Select Case vType 
		    'Case "MSSQL"
		    'DB_MSSQL.SQLExecute(vSql)
		    'modLog.addTestTextDB("DB Execute End")
		    'modLog.addTestText("END "+CurrentMethodName)
		    'Return
		    
		  Case "mySQL"
		    DB_mySQL.SQLExecute(vSql)
		    modLog.addTestTextDB("DB Execute End")
		    modLog.addTestText("END "+CurrentMethodName)
		    Return
		    
		  Case "SQLite"
		    'modLog.addTestTextDB (vSql)
		    Dim DB_SQLite As New SQLiteDatabase
		    
		    If DBlite_Folder <> Nil And DBlite_Folder.Exists Then
		      DB_SQLite.DatabaseFile = DBlite_Folder
		      'MsgBox(DBlite_Folder.AbsolutePath)
		    Else
		      MsgBox("DBlite_Execute(): SQLite file not exist.")
		      Exit
		    End If
		    
		    If DB_SQLite  = Nil Then
		      MsgBox("Error - DBlite_Execute(): DB_SQLite nill")
		      Exit
		    End If
		    
		    If DB_SQLite.Connect Then
		      DB_SQLite.SQLExecute(vSql)
		    Else
		      MsgBox("Error - DBlite_Execute(): " + DB_SQLite.ErrorMessage)
		      Exit
		    End If
		    
		    DB_SQLite.Close
		    modLog.addTestTextDB("DB Execute End")
		    modLog.addTestText("END "+CurrentMethodName)
		    Return
		    
		  Else
		    MsgBox "modDB.DbExecute>No DB?"
		    modLog.addTestTextDB("modDB.DbExecute>No DB?")
		    modLog.addTestTextDB("DB Execute End")
		  End Select
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DbSelect(vType As String, vSql As String) As RecordSet
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modLog.addTestTextDB("DB Execute Start")
		  modLog.addTestTextDB (vSql)
		  
		  If vType = "default" Then vType = modDB.DBType
		  
		  modLog.addTestTextDB ("DB type = " + vType)
		  modLog.addTestTextDB (vSql)
		  
		  Select Case vType 
		    'Case "MSSQL"
		    'rs0 = DB_MSSQL.SQLSelect(vSql)
		    'modLog.addTestTextDB("DB Select 2")
		    'Return rs0
		    
		  Case "mySQL"
		    rs0 = DB_mySQL.SQLSelect(vSql)
		    modLog.addTestTextDB("DB Select End")
		    Return rs0
		    
		  Case "SQLite"
		    Dim DB_SQLite As New SQLiteDatabase
		    
		    If DBlite_Folder <> Nil And DBlite_Folder.Exists Then
		      DB_SQLite.DatabaseFile = DBlite_Folder
		      'MsgBox(DBlite_Folder.AbsolutePath)
		    Else
		      MsgBox("DBlite_Select(): SQLite file not exist.")
		      Exit
		    End If
		    
		    If DB_SQLite  = Nil Then
		      MsgBox("Error - DBlite_Select(): DB_SQLite nill")
		      Exit
		    End If
		    
		    If DB_SQLite.Connect Then
		      rs0 = DB_SQLite.SqlSelect(vSql)
		      If rs0 = Nil Then
		        MsgBox("Error - DBlite_Select() rs = nil: " + DB_SQLite.ErrorMessage)
		        DB_SQLite.Close
		        Exit
		      End If
		    Else
		      MsgBox("Error - DBlite_Select(): " + DB_SQLite.ErrorMessage)
		      Exit
		    End If
		    
		    DB_SQLite.Close
		    modLog.addTestTextDB("DB Select End")
		    modLog.addTestText("END "+CurrentMethodName)
		    Return rs0
		    
		  Else
		    
		  End Select
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		DBlite_Folder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetDbMyName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetDbName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetHost As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetPass As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DBSetUser As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DBType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DB_MSSQL_ZMENIT_NA_MSSQL As MySQLCommunityServer
	#tag EndProperty

	#tag Property, Flags = &h0
		DB_mySQL As MySQLCommunityServer
	#tag EndProperty

	#tag Property, Flags = &h0
		DB_OnOFF As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DB_SQLite As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		rs0 As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		rs2 As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		sql As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sql2 As String
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
			Name="sql"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sql2"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetHost"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetUser"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetPass"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetDbName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetDbMyName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBSetPort"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DB_OnOFF"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
