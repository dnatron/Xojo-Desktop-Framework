#tag Window
Begin ContainerControl ccLogin
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cC0C0C000
   Backdrop        =   0
   Compatibility   =   ""
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   136
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   323
   Begin PushButton btnLogin
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   231
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   106
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label lblLogin
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Přihlašte se prosím."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextField txfLoginNick
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   78
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   38
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   233
   End
   Begin TextField txpLoginHeslo
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   78
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   True
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   72
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   233
   End
   Begin Label lblLoginHeslo
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Heslo"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   73
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   46
   End
   Begin Label lblLoginNick
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Uživatel"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   39
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   46
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events btnLogin
	#tag Event
		Sub Action()
		  'If txfLoginNick.Text = "" Or txpLoginHeslo.Text = "" Or  txpLoginHeslo.Text.Len < 5 Then
		  'MsgBox "Zadejte Uživatele i Heslo."
		  'txfLoginNick.Text = "Zde zadejte Uživatele"
		  'txpLoginHeslo.Text = ""
		  'Return
		  'End If
		  '
		  'Dim UserPassMD5 As String
		  'UserPassMD5 = MD5(txpLoginHeslo.Text)
		  'UserPassMD5 = EncodeHex(UserPassMD5)
		  ''MsgBox(UserPassMD5)
		  '
		  'For i = 0 To modSQLData.clsUsers1.UBound
		  'If modSQLData.clsUsers1(i).UserNick = txfLoginNick.Text And modSQLData.clsUsers1(i).UserPass = UserPassMD5 Then
		  'txfLoginNick.Text = ""
		  'txpLoginHeslo.Text = ""
		  'Win1.ccLogin1.top = -200
		  'Win1.ccLogin1.Visible = False
		  'Win1.ccLogin1.Enabled = False
		  'Win1.lblLoginUserName.Text = DefineEncoding(modSQLData.clsUsers1(i).UserNick, Encodings.WindowsLatin2 ) + ": Přihlášen"
		  'Win1.btnLoginDesktop.Caption = "LogOut"
		  'Win1.btnLoginDesktop.HelpTag = Str(modSQLData.clsUsers1(i).idUser)
		  '
		  'For i = 0 To modSQLData.clsUsers1.UBound
		  'If Win1.btnLoginDesktop.HelpTag = Str(modSQLData.clsUsers1(i).idUser) Then
		  'If modSQLData.clsUsers1(i).PravaUpravit = 0 Then
		  'Win1.btnPvUpravit.Enabled = False
		  'Else
		  'Win1.btnPvUpravit.Enabled = True
		  'End If
		  'End If
		  'Next i
		  '
		  'For i = 0 To modSQLData.clsUsers1.UBound
		  'If Win1.btnLoginDesktop.HelpTag = Str(modSQLData.clsUsers1(i).idUser) Then
		  'If modSQLData.clsUsers1(i).PravaSmazat = 0 Then
		  'Win1.btnPvSmazat.Enabled = False
		  'Else
		  'Win1.btnPvSmazat.Enabled = True
		  'End If
		  'End If
		  'Next i
		  '
		  '//todo nacist data do clsUserInfo 
		  ''Dim clsUserInfo As New modGlobal.clsUserInfo
		  ''MsgBox Str(modSQLData.clsUsers1(i).idUser)
		  ''modGlobal.clsUserInfo1.idUser = modSQLData.clsUsers1(i).idUser
		  ''modGlobal.clsUserInfo1.UserNick = modSQLData.clsUsers1(i).UserNick
		  ''modGlobal.clsUserInfo.UserJmeno = modSQLData.clsUsers1(i).UserJmeno
		  ''modGlobal.clsUserInfo.UserPrijmeni = modSQLData.clsUsers1(i).UserPrijmeni
		  ''modGlobal.clsUserInfo.UserPass = modSQLData.clsUsers1(i).UserPass
		  ''modGlobal.clsUserInfo.PravaFirmy = modSQLData.clsUsers1(i).PravaFirmy
		  ''modGlobal.clsUserInfo.PravaPolozky = modSQLData.clsUsers1(i).PravaPolozky
		  ''modGlobal.clsUserInfo.PravaInventura = modSQLData.clsUsers1(i).PravaInventura
		  ''modGlobal.clsUserInfo.PravaReporty = modSQLData.clsUsers1(i).PravaReporty
		  ''modGlobal.clsUserInfo.PravaUzivatele = modSQLData.clsUsers1(i).PravaUzivatele
		  ''modGlobal.clsUserInfo.PravaLogy = modSQLData.clsUsers1(i).PravaLogy
		  ''modGlobal.clsUserInfo.PravaUpravit = modSQLData.clsUsers1(i).PravaUpravit
		  ''modGlobal.clsUserInfo.PravaSmazat = modSQLData.clsUsers1(i).PravaSmazat
		  '
		  'MsgBox "Přihlášení proběhlo vpořádku."
		  'modLog.addTestText("END")
		  'Return
		  '
		  'End If
		  'Next
		  '
		  'MsgBox "Uživatel nebo Heslo neexistuje."
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txfLoginNick
	#tag Event
		Sub GotFocus()
		  me.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txpLoginHeslo
	#tag Event
		Sub GotFocus()
		  me.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
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
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
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
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
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
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
