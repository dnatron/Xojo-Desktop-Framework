#tag Window
Begin ContainerControl ccDBsetup
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   552
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
   Width           =   1220
   Begin RoundRectangle rDBSetup
      AutoDeactivate  =   True
      BorderColor     =   &c00000000
      BorderWidth     =   1
      Enabled         =   True
      FillColor       =   &cE8F3FF00
      Height          =   552
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      OvalHeight      =   16
      OvalWidth       =   16
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   1220
      Begin Label lblDBConName
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Connection Name :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   105
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Rectangle rDBSetupCon
         AutoDeactivate  =   True
         BorderWidth     =   0
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &cE6F2FF00
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Left            =   184
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         Top             =   97
         TopLeftColor    =   &c00000000
         Transparent     =   True
         Visible         =   True
         Width           =   374
         Begin PushButton btnDBSetupTestConnection
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Test Connection"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   423
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
            Top             =   105
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin PushButton btnDBSetupConnectToDb
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Connect to Database"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   423
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   140
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin PushButton btnDBSetupSave
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Save as New"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   423
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin PushButton btnDBSetupDelete
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Delete"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   423
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   276
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin TextField txfDBSetupPassword
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   4
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   276
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin TextField txfDBSetupUserName
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   5
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "root"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   241
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin TextField txfDBSetupPort
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   6
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "3306"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin TextField txfDBSetupDbName
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   7
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "prestashop1563"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   172
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin TextField txfDBSetupHost
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   8
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "localhost"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   136
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin TextField txfDBSetupConName
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
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   190
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
            TabIndex        =   9
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "fxtc"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   104
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   177
         End
         Begin PushButton btnDBSetupUpdate
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Update"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetupCon"
            Italic          =   False
            Left            =   423
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   242
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
      End
      Begin Rectangle rDBSetup1
         AutoDeactivate  =   True
         BorderWidth     =   1
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &c45454500
         Height          =   36
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         Top             =   20
         TopLeftColor    =   &c00000000
         Transparent     =   True
         Visible         =   True
         Width           =   541
         Begin Label lblDBNadpis
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetup1"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "mySQL Connection :"
            TextAlign       =   0
            TextColor       =   &cFF800000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   29
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
      End
      Begin Label lblDBHost
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Host Name/Host Address :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   137
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   152
      End
      Begin Label lblDBPort
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         Text            =   "Port (3306) :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   206
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label lblDBUserName
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         Text            =   "User Name :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   242
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   70
      End
      Begin Label lblDBPassword
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Password :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   277
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   70
      End
      Begin Rectangle rDBSetup2
         AutoDeactivate  =   True
         BorderWidth     =   1
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &c45454500
         Height          =   36
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Left            =   677
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         Top             =   20
         TopLeftColor    =   &c00000000
         Transparent     =   True
         Visible         =   True
         Width           =   523
         Begin Label lblMySQL1
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetup2"
            Italic          =   False
            Left            =   697
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "DB Connection List :"
            TextAlign       =   0
            TextColor       =   &cFF800000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   29
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   113
         End
      End
      Begin PushButton btnDBSetupDisconet
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Disconnect"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   423
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   319
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   133
      End
      Begin Rectangle rDBSetup3
         AutoDeactivate  =   True
         BorderWidth     =   1
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &c45454500
         Height          =   36
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         Top             =   353
         TopLeftColor    =   &c00000000
         Transparent     =   True
         Visible         =   True
         Width           =   541
         Begin Label lblDBStatus
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetup3"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Status :"
            TextAlign       =   0
            TextColor       =   &cFFFFFF00
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   361
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   48
         End
         Begin Label lblDBStatusValue
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "rDBSetup3"
            Italic          =   False
            Left            =   87
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
            Text            =   "Disconnected"
            TextAlign       =   0
            TextColor       =   &cFF000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   362
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   294
         End
      End
      Begin Label lblSkupinaKategorii5
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   39
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   570
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ">>>>>>"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   22.0
         TextUnit        =   0
         Top             =   197
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin Label lblDBName
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Database Name :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label lblSkupinaKategorii
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   39
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   570
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ">>>>>x"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   22.0
         TextUnit        =   0
         Top             =   266
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin Label lblSkupinaKategorii6
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   39
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   570
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "<<<>>>"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   22.0
         TextUnit        =   0
         Top             =   233
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin Label lblDbType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "DB Type"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   69
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin PopupMenu popDbType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         InitialValue    =   "mySQL/MariaSQL\r\nMSSQL\r\nSQLite\r\nOracle\r\nPostgresql"
         Italic          =   False
         Left            =   190
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   68
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   178
      End
      Begin Label lblDBAutoConnect
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
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
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Auto connect :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   320
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   152
      End
      Begin CheckBox chbAutoConnect
         AutoDeactivate  =   True
         Bold            =   True
         Caption         =   "No"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   190
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   320
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextArea txaDbInstall
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   187
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   677
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   2
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   353
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   523
      End
      Begin Label lblDbInstallInfo1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   318
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Uložte nastavení DB ""Save""."
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   467
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
      Begin Label lblDbInstallInfo2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   318
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Restartujte aplikaci."
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   499
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
      Begin Label lblDbInstallInfo
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   318
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Upozornění: smaže původní pokud existuje"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   435
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
      Begin PushButton btnDbInstall
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Create new Database structure"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   318
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   401
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   243
      End
      Begin Label lblSkupinaKategorii7
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   39
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         Italic          =   False
         Left            =   570
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   24
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ">>>>>>"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   22.0
         TextUnit        =   0
         Top             =   391
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   103
      End
      Begin Listbox lstDBSetup
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   8
         ColumnsResizable=   False
         ColumnWidths    =   "0,160,160,100,100,0,0,0"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   False
         HeadingIndex    =   -1
         Height          =   282
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "rDBSetup"
         InitialValue    =   "id	Connection Name	DB type	Host	DB Name	Port	User	Password	AutoConnect"
         Italic          =   False
         Left            =   677
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   2
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   25
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   68
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   523
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub ConnectToDB()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modDB.DBSetHost = txfDBSetupHost.Text
		  modDB.DBSetPort = Val(txfDBSetupPort.Text)
		  modDB.DBSetUser = txfDBSetupUserName.Text
		  modDB.DBSetPass = txfDBSetupPassword.Text
		  modDB.DBSetDbName  = txfDBSetupDbName.Text
		  
		  'If modDB.DbConnect("MSSQL","DbTest-dbTestSamir") = True Then // DbOstra-dbMFGdata, DbTest-dbMFGdata, DbTest-dbTestSamir, Doma-dbTestSamir
		  If modDB.DbConnect("mySQL") = True Then // DbOstra-dbMFGdata, DbTest-dbMFGdata, DbTest-dbTestSamir, Doma-dbTestSamir
		    lblDBStatusValue.Text = "Connected !" + txfDBSetupConName.Text
		    lblDBStatusValue.TextColor = RGB(0, 255, 0)
		    rDBSetupCon.Enabled = False
		    modLog.addTestTextDB("Db Ok")
		  Else
		    lblDBStatusValue.Text = "Disconnected !"
		    lblDBStatusValue.TextColor = RGB(255, 0, 0)
		    modLog.addTestTextDB("Db Nepřipojeno")
		    rDBSetupCon.Enabled = True
		  End If
		  modLog.addTestTextDB("DB type: "+modDB.DBType)
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DbAutoConnect()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  For i = 0 To lstDBSetup.ListCount -1
		    If lstDBSetup.Cell(i,8) = "1" Then
		      'MsgBox "nalezeno " + lstDBSetup.Cell(i,0)
		      ConnectToDB
		    End If
		  Next
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub loadlstDBSetup()
		  lstDBSetup.DeleteAllRows
		  rs = modDB.DbSelect("SQLite", "SELECT id, ConName, DbType, Host, DbName, Port, User, Password, AutoConnect FROM f_saved_DB" )
		  
		  If rs <> Nil Then
		    While Not modDB.rs.EOF
		      lstDBSetup.AddRow
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 0) = rs.field("id").getString
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 1) = rs.field("ConName").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 2) = rs.field("DbType").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 3) = rs.field("Host").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 4) = rs.field("DbName").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 5) = rs.field("Port").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 6) = rs.field("User").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 7) = rs.field("Password").stringValue
		      lstDBSetup.Cell(lstDBSetup.LastIndex, 8) = rs.field("AutoConnect").stringValue
		      If lstDBSetup.Cell(lstDBSetup.LastIndex, 8) = "1" Then
		        lstDBSetup.Selected(lstDBSetup.LastIndex) = True
		      End If
		      
		      rs.MoveNext
		    Wend
		    rs.Close
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = SQLinstall, Type = String, Dynamic = False, Default = \"sql kod", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnDBSetupTestConnection
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim db As MySQLCommunityServer
		  db = New MySQLCommunityServer
		  db.Host = txfDBSetupHost.Text
		  db.Port = Val(txfDBSetupPort.Text)
		  db.DatabaseName = txfDBSetupDbName.Text
		  db.UserName = txfDBSetupUserName.Text
		  db.Password = txfDBSetupPassword.Text
		  
		  If db.Connect Then
		    //proceed with database operations
		    MsgBox("Connection OK !")
		    db.SQLExecute("SET NAMES utf8")
		    db.SQLExecute("SET CHARACTER SET utf8")
		    db.Close
		  Else
		    MsgBox("Connection failed !")
		    MsgBox("DB Error - btnDBSetupTestConnection : " + db.ErrorMessage)
		    db.Close
		  End If
		  
		  lblDBStatusValue.Text = "Disconnected !"
		  lblDBStatusValue.TextColor = RGB(255, 0, 0)
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDBSetupConnectToDb
	#tag Event
		Sub Action()
		  ConnecttoDB
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDBSetupSave
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  'Dim id as String = lstDBSetup.Cell(lstDBSetup.listIndex, 0)
		  Dim ConName As String = txfDBSetupConName.Text
		  Dim DbType As String = popDbType.Text
		  Dim Host As String = txfDBSetupHost.Text
		  Dim Port As String =txfDBSetupPort.Text
		  Dim DbName As String = txfDBSetupDbName.Text
		  Dim UserName As String = txfDBSetupUserName.Text
		  Dim Password As String = txfDBSetupPassword.Text
		  Dim AutoConnect As Integer
		  If chbAutoConnect.state = CheckBox.CheckedStates.Checked Then
		    AutoConnect = 1
		    For i = 0 To lstDBSetup.ListCount -1
		      If lstDBSetup.Cell(i,8) = "1" Then
		        'MsgBox "nalezeno " + lstDBSetup.Cell(i,0)
		        modDB.DbExecute ("SQLite", "UPDATE f_saved_DB SET AutoConnect = 0 WHERE id = "+lstDBSetup.Cell(i,0)+"" )
		      End If
		    Next
		    
		  Else
		    AutoConnect = 0
		  End If
		  
		  'DBlite.SQLExecute("BEGIN TRANSACTION")
		  sql = "INSERT INTO f_saved_DB (ConName, DbType, Host, DbName, Port, User, Password, AutoConnect) VALUES" _
		  +" ('"+ConName+"', '"+DbType+"', '"+Host+"', '"+DbName+"', "+Port+", '"+UserName+"', '"+Password+"', "+Str(AutoConnect)+")"
		  MsgBox sql
		  modDB.DbExecute ("SQLite", sql )
		  loadlstDBSetup
		  
		  'If DBlite.Error then
		  'MsgBox("DB Error - btnDBSetupSave : " + DBlite.ErrorMessage)
		  'DBlite.Rollback
		  'Else
		  'DBlite.Commit
		  'MsgBox "The Connection is Saved "
		  'loadlstDBSetup()
		  'End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDBSetupDelete
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If lstDBSetup.listIndex > -1 Then
		    If lstDBSetup.Cell(lstDBSetup.listIndex, 8) = "0" Then
		      Dim id As String = lstDBSetup.Cell(lstDBSetup.listIndex, 0)
		      modDB.DbExecute ("SQLite", "DELETE FROM f_saved_DB WHERE id = "+id+"" )
		      loadlstDBSetup
		    Else
		      MsgBox "You can only update this connection,not delete."
		    End If
		    
		  Else
		    MsgBox "Please select Connection on Listbox !"
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDBSetupUpdate
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If lstDBSetup.listIndex > -1 Then
		    Dim id As String = lstDBSetup.Cell(lstDBSetup.listIndex, 0)
		    Dim ConName As String = txfDBSetupConName.Text
		    Dim DbType As String = popDbType.Text
		    Dim Host as String = txfDBSetupHost.Text
		    Dim Port as String =txfDBSetupPort.Text
		    Dim DbName as String = txfDBSetupDbName.Text
		    Dim UserName as String = txfDBSetupUserName.Text
		    Dim Password As String = txfDBSetupPassword.Text
		    Dim AutoConnect As Integer
		    If chbAutoConnect.state = CheckBox.CheckedStates.Checked Then
		      AutoConnect = 1
		      For i = 0 To lstDBSetup.ListCount -1
		        If lstDBSetup.Cell(i,8) = "1" And lstDBSetup.Cell(i,0) <> id Then
		          'MsgBox "nalezeno " + lstDBSetup.Cell(i,0)
		          modDB.DbExecute ("SQLite", "UPDATE f_saved_DB SET AutoConnect = 0 WHERE id = "+lstDBSetup.Cell(i,0)+"" )
		        End If
		      Next
		      
		    Else
		      AutoConnect = 0
		    End If
		    
		    modDB.DbExecute ("SQLite", "UPDATE f_saved_DB SET ConName = '"+ConName+"', DbType = '"+DbType+"', host = '"+Host+"', DbName = '"+DbName+"', Port = "+Port+", User = '"+UserName+"', Password = '"+Password+"', AutoConnect = '"+Str(AutoConnect)+"' WHERE id = "+id+"" )
		    
		    loadlstDBSetup
		    MsgBox "Connection Updated"
		    
		  Else
		    MsgBox "Please select Connection on Listbox !"
		  End If
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDBSetupDisconet
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  'If modDB.db <> Nil And Win1.ccSeoHome1.lblHomeShopMySQLValue.Text <> "Disconnected" Then
		  'MsgBox ("Disconnected")
		  '
		  'Else
		  'MsgBox ("Cannot Disconnect if you are Disconnected !")
		  'End If
		  
		  lblDBStatusValue.Text = "Disconnected !"
		  lblDBStatusValue.TextColor = RGB(255, 0, 0)
		  'Win1.ccSeoHome1.lblHomeShopMySQLValue.Text = "Disconnected"
		  'Win1.ccSeoHome1.lblHomeShopMySQLValue.TextColor = RGB(2255, 0, 0)
		  modDB.DbDisconnect("mySQL")
		  
		  'Win1.ccSeoPrd1.lstSeoPrd.Reset
		  'Win1.ccSeoPrd1.lstSeoPrd.DeleteAllRows
		  
		  rDBSetupCon.Enabled = True
		  lstDBSetup.Enabled = True
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chbAutoConnect
	#tag Event
		Sub Action()
		  If chbAutoConnect.state = CheckBox.CheckedStates.Checked Then
		    chbAutoConnect.state = CheckBox.CheckedStates.Checked
		    chbAutoConnect.Caption = "yes"
		  Else
		    chbAutoConnect.state = CheckBox.CheckedStates.Unchecked
		    chbAutoConnect.Caption = "no"
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txaDbInstall
	#tag Event
		Sub Open()
		  Me.Text = SQLinstall
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDbInstall
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modDB.DbExecute ("Default", SQLinstall)
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDBSetup
	#tag Event
		Sub Change()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If Me.listIndex >= 0 Then
		    txfDBSetupConName.Text = Me.Cell(Me.listIndex, 1)
		    Select Case Me.Cell(Me.listIndex, 2)
		    Case "mySQL/MariaSQL"
		      popDbType.ListIndex = 0
		    Case "MSSQL"
		      popDbType.ListIndex = 1
		    Case "SQLite"
		      popDbType.ListIndex = 2
		    Case "Oracle"
		      popDbType.ListIndex = 3
		    Case "Postgresql"
		      popDbType.ListIndex = 4
		    End Select
		    'If Me.Cell(Me.listIndex, 2) = "mySQL/MariaSQL" Then popDbType.ListIndex = 0
		    txfDBSetupHost.Text = Me.Cell(Me.listIndex, 3)
		    txfDBSetupDbName.Text = Me.Cell(Me.listIndex, 4)
		    txfDBSetupPort.Text = Me.Cell(Me.listIndex, 5)
		    txfDBSetupUserName.Text = Me.Cell(Me.listIndex, 6)
		    txfDBSetupPassword.Text = Me.Cell(Me.listIndex, 7)
		    If Me.Cell(Me.listIndex, 8) = "1" Then
		      chbAutoConnect.state = CheckBox.CheckedStates.Checked
		      chbAutoConnect.Caption = "yes"
		    Else
		      chbAutoConnect.state = CheckBox.CheckedStates.Unchecked
		      chbAutoConnect.Caption = "no"
		    End If
		    
		  Else
		    txfDBSetupConName.text = ""
		    txfDBSetupHost.text = ""
		    txfDBSetupDbName.Text = ""
		    txfDBSetupPort.text = ""
		    txfDBSetupUserName.text = ""
		    txfDBSetupPassword.text = ""
		  End If
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  loadlstDBSetup
		  DbAutoConnect
		  
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
