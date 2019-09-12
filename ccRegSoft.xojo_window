#tag Window
Begin ContainerControl ccRegSoft
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
   Height          =   110
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
   Visible         =   False
   Width           =   600
   Begin Rectangle rDialogInfoSerial
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cA4966C00
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -120
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   600
      Begin TextArea txaInfoSerial
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   45
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "rDialogInfoSerial"
         Italic          =   False
         Left            =   65
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
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -90
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   470
      End
      Begin Label lblInfoSerial
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogInfoSerial"
         Italic          =   False
         Left            =   65
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Software is registred, your serial number is:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -115
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   470
      End
      Begin PushButton btnRegDeleteReg
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Delete Serial number"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogInfoSerial"
         Italic          =   False
         Left            =   230
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -40
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   141
      End
   End
   Begin Rectangle rDialogRegFull
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cA4966C00
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   125
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   600
      Begin PushButton btnRegFullCancel
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Cancel"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   53
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   193
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnRegFullReg
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Registr"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   460
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField txfRegFullEmail
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
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   53
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   163
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   215
      End
      Begin Label lblRegFullEmail
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   53
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Emai:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   131
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   215
      End
      Begin TextField txfRegFullOrderNr
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
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   325
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   162
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   215
      End
      Begin Label lblRegFullOrderNr
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFull"
         Italic          =   False
         Left            =   325
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Order number:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   130
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   215
      End
   End
   Begin Rectangle rDialogInsertSerial
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cA4966C00
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   370
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   600
      Begin Label lblInsertSerial
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogInsertSerial"
         Italic          =   False
         Left            =   65
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Please insert yours serial number:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   376
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   470
      End
      Begin TextField txfInsertSerial
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
         InitialParent   =   "rDialogInsertSerial"
         Italic          =   False
         Left            =   65
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   408
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   470
      End
      Begin PushButton btnInsertSerialReg
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Registr"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogInsertSerial"
         Italic          =   False
         Left            =   455
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   438
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnInsertSerialCancel
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Cancel"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogInsertSerial"
         Italic          =   False
         Left            =   65
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   438
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin Rectangle rDialogRegFree
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cA4966C00
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   600
      Begin Label lblRegFree
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFree"
         Italic          =   False
         Left            =   65
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Email:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   256
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   470
      End
      Begin TextField txfRegFree
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
         InitialParent   =   "rDialogRegFree"
         Italic          =   False
         Left            =   153
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   288
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   287
      End
      Begin PushButton btnRegFree
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Registr"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFree"
         Italic          =   False
         Left            =   455
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   288
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushRegFreeCancel
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Cancel"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegFree"
         Italic          =   False
         Left            =   53
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   288
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin Rectangle rDialogRegStart
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cA4966C00
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -240
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   600
      Begin Label lblSerialNr1
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegStart"
         Italic          =   False
         Left            =   65
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Software is Not registred, please choise Option and Registr it:"
         TextAlign       =   1
         TextColor       =   &c80400000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -236
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   470
      End
      Begin PushButton btnRegStartNext
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Next >>"
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegStart"
         Italic          =   False
         Left            =   260
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -163
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Choise one"
         Enabled         =   True
         Height          =   46
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rDialogRegStart"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -216
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   560
         Begin RadioButton rbRegStartBuySoft
            AutoDeactivate  =   True
            Bold            =   True
            Caption         =   "Buy Full"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   462
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   -196
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   71
         End
         Begin RadioButton rbRegStartRegFull
            AutoDeactivate  =   True
            Bold            =   True
            Caption         =   "Registr Full"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   350
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            TabIndex        =   1
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   -197
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin RadioButton rbRegStartHaveSerial
            AutoDeactivate  =   True
            Bold            =   True
            Caption         =   "I Have serial number"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   200
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            TabIndex        =   2
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   -196
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   138
         End
         Begin RadioButton rbRegStartFreeware
            AutoDeactivate  =   True
            Bold            =   True
            Caption         =   "Freeware/Trial/demo"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            TabIndex        =   3
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   -196
            Transparent     =   True
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   148
         End
      End
   End
   Begin URLConnection RegSocket
      AllowCertificateValidation=   False
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If modGlobal.TestModeOnOf = True Then
		    txfRegFullEmail.Text = "fxtc@post.cz"
		    txfRegFullOrderNr.Text = "12345678"
		    txfRegFree.Text = "fxtc@post.cz"
		  End If
		  
		  //Setup regsoft
		  SoftName = "Testsoft1"
		  SoftVersion = "32"
		  SoftDateRelease = "2018-09-16"
		  SoftOS  = "win"
		  SoftRegHidden = 0 //zapne odesilani dat na pozadi (naregistraci nema vliv)
		  SoftRegFreeware = 0
		  SoftRegDemo = 0
		  SoftRegTrial = 1
		  SoftRegTrialDays = 30
		  SoftRegTrialNrRun = 30
		  SoftRegSub = 0
		  SoftRegFull = 1
		  SoftNeedReg = 1
		  SoftRegBuyOn = "codecayon"
		  SoftRegBuyUrl = "http://shop.dnatron.com/en/home/3-prestashop-seo-monster.html"
		  
		  If SoftRegTrial = 1 And SoftRegTrialNrRun = 0 Then rbRegStartFreeware.Enabled = False
		  // pokud SoftRegDemo = 1 ToDo zjistit zda je serial pro Demo nebo Ful
		  
		  'Dim SerialNrTest As String = SerialGenerate("fxtc@post.cz", UUID_MBS, "12345678" )
		  'MsgBox SerialNrTest
		  'txaInfoSerial.Text = SerialNrTest
		  'If SerialVerify(SerialNrTest) = True Then MsgBox "SerialVerify ok"
		  
		  ////////////////////////////// API URL ///////////////////////////////////////
		  RegApiUrl = "http://www.dnatron.com:4446/api/softreg" // http://fxtc.ddns.net/api/softreg , http://www.dnatron.com:4446/api/softreg
		  
		  d = New date
		  SoftRegDateTime = d.SQLDateTime
		  
		  If  SoftNeedReg = 1 Then // jestlize soft porebuje registrci
		    Win1.ccRegSoft1.visible = True
		    
		    If ReadSerial = True Then // Pokusí se nahrát serial z disku 
		      SoftReg = True
		    Else
		      showDialog("RegStart") // pokud se serial nenahral z disku spusti registracni formular
		      If SoftRegFreeware = 1  And SoftRegFull = 0 Then
		        rbRegStartRegFull.Enabled = False
		        rbRegStartBuySoft.Enabled = False
		      End If
		      Return
		    End If
		    
		  Else  //pokud soft nepotrebuje registraci
		    SoftReg = True
		    MsgBox "SoftNeedReg = 0"
		    If SoftRegHidden = 0 Then Return // nepotrebuje rregistraci a nepotrebuje odesilat data na pozadi
		  End If
		  
		  //Hidden = odesle data na pozadi(ale negeneruje serial) protoze je jiz registrovan a nebo nepotrbuje registraci
		  If SoftRegHidden = 1 And SoftReg = True Then
		    customerRegType = "RegHidden"
		    If SoftNeedReg = 1 Then
		      Win1.ccRegSoft1.visible = True
		    Else
		      Win1.ccRegSoft1.visible = False
		    End If
		    SendReg
		    'RegSocket.Disconnect
		    modLog.addTestText("END "+CurrentMethodName)
		    Return
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DeleteSerial()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modDB.DbExecute("SQLite","DELETE FROM f_regTable")
		  Win1.ccRegSoft1.txaInfoSerial.Text = ""
		  Win1.ccRegSoft1.txfInsertSerial.Text = ""
		  SoftReg = False
		  showDialog("RegStart")
		  MsgBox "Serial deleted."
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EmailFilter(Source as string) As Boolean
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
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
		      End If
		      
		    end if
		  next
		  If Source = "" or Source <> result or zavinac <> 1 or tecka < 1 Then
		    'MsgBox "Please insert right Email adress."
		    Return False
		    
		  Else
		    Return True 
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RC4(strData as string, strKey as String) As String
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim MM As MemoryBlock = strData
		  Dim MM2 as New MemoryBlock(LenB(strData))
		  dim memAsciiArray(255) as integer
		  Dim memKeyArray(255)   As Integer
		  dim memJump as integer
		  dim memTemp as integer
		  dim memY as integer
		  dim intKeyLength as integer
		  dim intIndex as integer
		  dim intT as integer
		  dim intX as integer
		  
		  intKeyLength = len(strKey)
		  
		  for intIndex = 0 to 255
		    memKeyArray(intIndex) = asc(mid(strKey, ((intIndex) mod (intKeyLength)) + 1, 1))
		  next
		  
		  for intIndex = 0 to 255
		    memAsciiArray(intIndex) = intIndex
		  next
		  
		  for intIndex = 0 to 255
		    memJump = (memJump + memAsciiArray(intIndex) + memKeyArray(intIndex)) mod 256
		    memTemp = memAsciiArray(intIndex)
		    memAsciiArray(intIndex) = memAsciiArray(memJump)
		    memAsciiArray(memJump) = memTemp
		  next
		  
		  intIndex = 0
		  memJump = 0
		  
		  for intX = 1 to MM2.Size
		    intIndex = (intIndex + 1) mod 256
		    memJump = (memJump + memAsciiArray(intIndex)) mod 256
		    intT = (memAsciiArray(intIndex) + memAsciiArray(memJump)) mod 256
		    memTemp = memAsciiArray(intIndex)
		    memAsciiArray(intIndex) = memAsciiArray(memJump)
		    memAsciiArray(memJump) = memTemp
		    memY = memAsciiArray(intT)
		    mm2.Byte(intX - 1) = bitwise.bitxor(val("&h" + hex(MM.byte(IntX - 1))), bitwise.bitxor(memTemp,memY))
		  next
		  
		  Return MM2
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ReadSerial() As Boolean
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  rs = modDB.DbSelect("sqlite","SELECT colSerial FROM f_regTable")
		  
		  If rs <> Nil Then
		    'While Not rs.EOF
		    SerialNr = rs.field("colSerial").StringValue
		    rs.MoveNext
		    'Wend
		    rs.Close
		    
		  Else
		    MsgBox "rs nil"
		    Return False
		  End If
		  
		  If SerialNr = "" Then
		    Return False
		  End If
		  
		  'MsgBox "ReadSerial: " + SerialNr
		  
		  If SerialVerify(SerialNr) = True Then
		    SoftReg = True
		    'SoftReg = False //pro test je ted false
		    showDialog("InfoSerial")
		    txaInfoSerial.Text = SerialNr
		    modLog.addTestText("END "+CurrentMethodName)
		    Return True
		  End If
		  
		  Return False
		  modLog.addTestText("END "+CurrentMethodName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Reg_Save(serial As String)
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  modDB.DbExecute("SQLite","DELETE FROM f_regTable")
		  d = New date
		  Dim MDdata As New MD5Digest
		  MDdata.Process(serial + "0" + Str(d) + Str(d)) // serial, pocet spusteni, datum registrace, datum ted
		  Dim MDdataValue As String = MDdata.Value
		  MDdataValue = MDdata.Value
		  MDdataValue =EncodeHex(MDdataValue)
		  'MDdataValue =DecodeHex(MDdataValue)
		  Dim sql As String = "INSERT INTO f_regTable (colSerial, colRunLimit, colMD, colDate, colDateNow) VALUES ('"+serial+"', 0, '"+MDdataValue+"', '"+Str(d)+"', '"+Str(d)+"')"
		  modLog.addTestText(sql)
		  'MsgBox sql
		  modDB.DbExecute("SQLite",sql )
		  
		  modLog.addTestText("END "+CurrentMethodName)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SendReg()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim dicReg As New Xojo.Core.Dictionary
		  
		  'MsgBox "customerRegType "+customerRegType
		  Dim vEmail As String
		  If customerRegType = "RegFreeAndTrial" Then
		    vEmail = txfRegFree.Text.Lowercase
		  Elseif customerRegType = "RegFull" Then
		    vEmail = txfRegFullEmail.Text.Lowercase
		  Elseif customerRegType = "RegHidden" Then
		    vEmail = "NeniPotrebaEmail@nic.nic"
		  End If
		  'MsgBox vEmail
		  
		  'If customerRegType = "RegFreeAndTrial" Or customerRegType = "RegFull" Then //kontrola emailu pokud je potreba registrace
		  If EmailFilter( vEmail ) = False Then
		    MsgBox "Please enter correct Email !"
		    txfRegFree.Text = "Insert Email"
		    txfRegFullEmail.Text = "Insert Email"
		    modLog.addTestText("END "+CurrentMethodName)
		    Return
		  End If
		  dicReg.Value("CustomerMail") = vEmail
		  
		  
		  If customerRegType = "RegFull" Then
		    If TextFilter(txfRegFullOrderNr.Text,"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-") = False Then
		      MsgBox "Please enter correct Order number !"
		      txfRegFullOrderNr.Text = "Insert order number"
		      modLog.addTestText("END "+CurrentMethodName)
		      Return
		      
		    Else
		      dicReg.Value("OrderNr") = txfRegFullOrderNr.Text.Lowercase
		    End If
		    
		  Else
		    dicReg.Value("OrderNr") = "NeniPotrebaOrderNr"
		  End If
		  
		  d = New date
		  dicReg.Value("DateNowCustomer") = d.SQLDateTime
		  dicReg.Value("SoftName") = SoftName
		  dicReg.Value("SoftVersion") = SoftVersion
		  dicReg.Value("SoftDateRelease") = SoftDateRelease
		  dicReg.Value("SoftOS") = SoftOS
		  dicReg.Value("SoftRegHidden") = SoftRegHidden
		  dicReg.Value("SoftRegFreeware") = SoftRegFreeware
		  dicReg.Value("SoftRegDemo") = SoftRegDemo
		  dicReg.Value("SoftRegTrial") = SoftRegTrial
		  dicReg.Value("SoftRegTrialDays") = SoftRegTrialDays
		  dicReg.Value("SoftRegTrialNrRun") = SoftRegTrialNrRun
		  dicReg.Value("SoftRegSub") = SoftRegSub
		  dicReg.Value("SoftRegFull") = SoftRegFull
		  dicReg.Value("SoftNeedReg") = SoftNeedReg
		  dicReg.Value("SoftRegBuyOn") = SoftRegBuyOn
		  dicReg.Value("SoftRegBuyUrl") = SoftRegBuyUrl
		  dicReg.Value("SoftRegDateTime") = d.SQLDateTime
		  // hardware info
		  dicReg.Value("HwUserName") = SystemInformationMBS.Username
		  dicReg.Value("HwHardDiscSerial") = SystemInformationMBS.HardDiscSerial
		  dicReg.Value("HwHostName") = SystemInformationMBS.HostName
		  dicReg.Value("HwCPUBrand") = SystemInformationMBS.CPUBrandString
		  dicReg.Value("HwMACAddress") = SystemInformationMBS.MACAddressString
		  dicReg.Value("HwOSName") = SystemInformationMBS.OSName
		  dicReg.Value("HwUUID_MBS") = UUID_MBS //UUID funkce
		  'dicReg.Value("HwMachineID") = MD5StringMBS("MachineID"+SystemInformationMBS.MacSerialNumber+SystemInformationMBS.MacModel+SystemInformationMBS.CPUBrandString+SystemInformationMBS.WinProductKey+SystemInformationMBS.MACAddressString)
		  dicReg.Value("HwMachineID") = EncodeHex(MD5("MachineID"+SystemInformationMBS.MacSerialNumber+SystemInformationMBS.MacModel+SystemInformationMBS.CPUBrandString+SystemInformationMBS.WinProductKey+SystemInformationMBS.MACAddressString))
		  'MsgBox MD5StringMBS("MachineID"+SystemInformationMBS.MacSerialNumber+SystemInformationMBS.MacModel+SystemInformationMBS.CPUBrandString+SystemInformationMBS.WinProductKey+SystemInformationMBS.MACAddressString)
		  'další info na https://www.monkeybreadsoftware.net/module-systeminformationmbs.shtml
		  
		  Dim jsonReg As Text
		  jsonReg = Xojo.Data.GenerateJSON(dicReg)
		  dicReg.RemoveAll
		  'MB jsonReg
		  
		  'RegSocket.SetRequestContent("jsonVar1=value1&jsonVar2=value2", "application/x-www-form-urlencoded")
		  RegSocket.SetRequestContent(jsonReg, "application/json")
		  RegSocket.RequestHeader("Authorization") = "pulsarDN_2"
		  Try
		    RegSocket.Send ("POST", RegApiUrl)
		    'RegSocket.Send ("POST", "http://posttestserver.com/post.php")
		  Catch e As xojo.core.UnsupportedOperationException
		    MsgBox( "Connection Error: "+ e.Message)
		  End Try
		  
		  'If SoftRegHidden =1 and SoftReg = true Then RegSocket.Disconnect
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SerialVerify(vSerialNr As String) As Boolean
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim vHeslo As String = vSerialNr.Left(vSerialNr.InStr("-")-1) //Heslo a Trial data
		  vSerialNr = vSerialNr.Right(vSerialNr.Len - vSerialNr.InStr("-")) // odstrani vData
		  Dim vEmail As String = vSerialNr.Left(vSerialNr.InStr("-")-1)
		  vSerialNr = vSerialNr.Right(vSerialNr.Len - vSerialNr.InStr("-")) // odstrani email
		  Dim vSerial As String = vSerialNr.Left(vSerialNr.InStr("#")-1)
		  vSerial = vEmail + "-" + vSerial + "#"
		  Dim vData As String = vSerialNr.Right(vSerialNr.Len - vSerialNr.InStr("#")) // odstrani serial
		  Dim vDataVerify As String = vData
		  'MsgBox vDataVerify
		  'vData = GZipStringReadMBS(vData)
		  vData = DecodeHex(vData)
		  vData = RC4 (vData, vHeslo)
		  'MsgBox vData
		  Dim ArrayData(-1) As String
		  ArrayData = Split(vData, ";")
		  If ArrayData.Ubound < 4 Then
		    DeleteSerial
		    MsgBox "Bad serial Number."
		    modLog.addTestText("END "+CurrentMethodName)
		    Return False
		  End If
		  'For i = 0 To Ubound(ArrayData)
		  'MsgBox ArrayData(i)
		  'Next
		  Dim vOrderId As String = ArrayData(0)
		  Dim vDateNowServer As String = ArrayData(1) //datum prvni registrace nebo ted na serveru
		  Dim vRegType As String = ArrayData(2)
		  Dim vSoftRegTrialDays As Integer = Val(ArrayData(3))
		  Dim vSoftRegTrialNrRun As Integer = Val(ArrayData(4))
		  Redim ArrayData(-1)
		  Dim vUUID As String = UUID_MBS
		  
		  'MsgBox "SerialVerify> vEmail: " + vEmail + " vUUID: " + vUUID + " Orderid: " + vOrderId + " TrialDays: " + vSoftRegTrialDays + " TrialNrRun: " + vSoftRegTrialNrRun _
		  '+ EndOfLine + " vData: " + vData
		  d = New date
		  d2 = New date
		  If SoftNeedReg = 1Then
		    d2.SQLDate = SoftDateRelease
		    If  d < d2 Then // datum v PC nemuze bejt mensi nez datum vydani software
		      DeleteSerial
		      MsgBox "Bad computer date."
		      modLog.addTestText("END "+CurrentMethodName)
		      Return False
		    End If
		    
		    d2.SQLDate = vDateNowServer
		    If d < d2 Then // jestlize dnesni datum je mensi nez datum prvni registrace je blbost
		      DeleteSerial
		      MsgBox "Bad computer date."
		      modLog.addTestText("END "+CurrentMethodName)
		      Return False
		    End If
		  End If
		  
		  Select Case vRegType
		  Case "trial" ///////////////////////////////////////////////////////////////////////////////////////////////// TRIAL /////////////////////////////////////////////////////////////////////
		    Dim vcolSerial, vcolMD, vcolDate, vcolDateNow, MDdataValue As String
		    Dim vcolRunLimit As Integer
		    Dim MDdata As New MD5Digest
		    Dim DBzaznamAnoNe As Boolean = True
		    
		    rs = modDB.DbSelect("SQLite","SELECT colSerial, colRunLimit, colMD, colDate, colDateNow FROM f_regTable")
		    
		    If rs.BOF Or rs Is Nil Then DBzaznamAnoNe = False // overi zda je v DB zaznam
		    'If rs Is Nil Then MB "FXrs is NIL"
		    If DBzaznamAnoNe Then
		      vcolSerial = rs.field("colSerial").StringValue
		      vcolRunLimit = rs.field("colRunLimit").IntegerValue
		      vcolMD = rs.field("colMD").StringValue
		      vcolDate = rs.field("colDate").StringValue
		      vcolDateNow = rs.field("colDateNow").StringValue
		      rs.Close
		      MB "Z DBlite"+EndOfLine+ "vcolSerial> "+ vcolSerial +EndOfLine+ "vcolMD> "+vcolMD+EndOfLine _
		       +" vcolRunLimit> " + Str(vcolRunLimit) +EndOfLine+ "vcolDate> "+vcolDate +EndOfLine+" vcolDateNow> "+ vcolDateNow
		      
		      
		      //////// verify OLD data z DBlite
		      MDdata.Process(vcolSerial + Str(vcolRunLimit) + vcolDate + vcolDateNow)
		      MDdataValue = EncodeHex(MDdata.Value)
		      MDdata.Clear
		      MB "MDdataValue: " + MDdataValue + EndOfLine  + "vcolMD: " + vcolMD
		      
		      If MDdataValue <> vcolMD Then // zjisti jestli nekdo nezmenil DB
		        MsgBox "SerialVerify: Stop modify DB"
		        DeleteSerial
		        modLog.addTestText("END "+CurrentMethodName)
		        Return False
		      End If
		      //////// zapsat RunTrial +1 do DBlite
		      d = New date
		      MDdata.Process(vcolSerial + Str(vcolRunLimit + 1) + vcolDate + Str(d))
		      MDdataValue = EncodeHex(MDdata.Value)
		      MDdata.Clear
		      modDB.DbExecute("SQLite", "UPDATE f_regTable SET colRunLimit = colRunLimit + 1, colMD = '"+ MDdataValue+"', colDateNow = '"+Str(d)+"'")
		    End If
		    
		    d2.SQLDate = vDateNowServer
		    d2.Day = d2.Day + vSoftRegTrialDays
		    If d > d2 Then
		      DeleteSerial
		      MsgBox "Your trial version is expired on: "+Str(d2)
		      modLog.addTestText("END "+CurrentMethodName)
		      Return False
		    End If
		    
		  Case "full" ///////////////////////////////////////////////////////////////////////////////////////////////// FULL ////////////////////////////////////////////////////////////////////////
		    d.SQLDate = SoftDateRelease
		    d2.SQLDate = vDateNowServer //datum prvni registrace
		    d2.Year = d.Year + 1
		    d2.Day = d.Day + 4
		    If d > d2 Then // jestlize datum prvni registrace + rok je vetsi nez SoftDateRelease je blbost (nelze registrovat novejsi software vydane vice nez o rok pozdeji)
		      DeleteSerial
		      MsgBox "Bad computer date."
		      modLog.addTestText("END "+CurrentMethodName)
		      Return False
		    End If
		    
		  End Select
		  
		  regMBS = New RegistrationEngineMBS
		  regMBS.BlockLength = 4 //delka bloku
		  regMBS.NumberLength = 16 //delka kodu
		  regMBS.Delimiter = "-"
		  regMBS.Prefix = vEmail + "-"
		  regMBS.suffix = "#"
		  
		  regMBS.Field(0) = vEmail
		  regMBS.Field(1)= vUUID
		  regMBS.Field(2)= vOrderId
		  regMBS.Field(3)= vHeslo
		  regMBS.Field(4)= vDataVerify
		  
		  regMBS.Alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		  'regMBS.PlatformSpecificKeys = False // zapne/vypne generovani klice podle OS
		  'regMBS.Platform = 2 // 1 mac, 2 win, 3 linux
		  
		  'MB regMBS.Calc + EndOfLine + vSerial
		  If regMBS.Verify(vSerial) Then
		    'MB "SerialNr OK"
		    Return True
		    
		  Else
		    'MB "SerialNr Failed"
		    Return False
		    
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showDialog(vDialog As String)
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Select Case vDialog
		  Case "InfoSerial"
		    rDialogInfoSerial.Top = 0
		    rDialogInsertSerial.top = 370
		    rDialogRegFree.top = 250
		    rDialogRegFull.top = 125
		    rDialogRegStart.top = -240
		    
		    
		  Case "RegStart"
		    rDialogInfoSerial.Top = -120
		    rDialogInsertSerial.top = 370
		    rDialogRegFree.top = 250
		    rDialogRegFull.top = 125
		    rDialogRegStart.top = 0
		    
		  Case "RegFreeAndTrial"
		    rDialogInfoSerial.Top = -120
		    rDialogInsertSerial.top = 370
		    rDialogRegFree.top = 0
		    rDialogRegFull.top = 125
		    rDialogRegStart.top = -240
		    
		  Case "RegFull"
		    rDialogInfoSerial.Top = -120
		    rDialogInsertSerial.top = 370
		    rDialogRegFree.top = 250
		    rDialogRegFull.top = 0
		    rDialogRegStart.top = -240
		    
		  Case "InsertSerial"
		    rDialogInfoSerial.Top = -120
		    rDialogInsertSerial.top = 0
		    rDialogRegFree.top = 250
		    rDialogRegFull.top = 125
		    rDialogRegStart.top = -240
		    
		  End Select
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TextFilter(Source as string, Allowable as string) As Boolean
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim result As String
		  for i as integer = 1 to len(Source)
		    if InStr(Allowable, source.Mid(i, 1)) >0 then
		      result = result + source.Mid(i, 1)
		    end if
		  next
		  if  Source <> result Then
		    return False
		  Else
		    return True
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UUID_MBS() As String
		  #If TargetMacOS Then
		    Return  SystemInformationMBS.MachineID   //CalculateSystemCode
		  #ElseIf TargetWin32 Or Target64Bit Then
		    
		    Dim CPUModel As String = SystemInformationMBS.CPUBrandString.Trim
		    Dim WinKey As String = SystemInformationMBS.WinProductKey.Trim
		    
		    Dim s As New shell
		    
		    s.Execute("wmic bios get serialnumber")
		    Dim s1() As String = s.Result.Split(EndOfLine)
		    
		    Dim BiosSerial As String
		    Try
		      BiosSerial= s1(1).Trim
		      System.DebugLog("Bios Serial from Shell: "+BiosSerial)
		    Catch
		      BiosSerial = ""
		    End Try
		    
		    Dim Salt As String = "9878235359809809"
		    Dim n As String = System.EnvironmentVariable("COMPUTERNAME").Trim
		    'Dim m As String = MD5StringMBS(Salt+CPUModel+WinKey+n+BiosSerial).Trim
		    Dim m As String = EncodeHex(Salt+CPUModel+WinKey+n+BiosSerial).Trim
		    Return m
		    
		  #ElseIf TargetLinux Then
		    
		    Dim HostName As String = SystemInformationMBS.HostName
		    Dim CPUModel As String = SystemInformationMBS.CPUBrandString
		    Dim Salt As String = "9878787328979"
		    'Dim m As String = MD5StringMBS(HostName+CPUModel+Salt)
		    Dim m As String = EncodeHex(HostName+CPUModel+Salt)
		    Return m
		    
		  #endif
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private customerRegType As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RegApiUrl As String
	#tag EndProperty

	#tag Property, Flags = &h0
		regMBS As RegistrationEngineMBS
	#tag EndProperty

	#tag Property, Flags = &h21
		Private rs As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SerialNr As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftDateRelease As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftNeedReg As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftOS As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftReg As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		SoftRegBuyOn As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegBuyUrl As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegDateTime As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegDemo As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegFreeware As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegFull As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegHidden As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegSub As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegTrial As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegTrialDays As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftRegTrialNrRun As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SoftVersion As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private UUID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events btnRegDeleteReg
	#tag Event
		Sub Action()
		  'txaInfoSerial.Text = ""
		  DeleteSerial
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRegFullCancel
	#tag Event
		Sub Action()
		  showDialog("RegStart")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRegFullReg
	#tag Event
		Sub Action()
		  SendReg
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnInsertSerialReg
	#tag Event
		Sub Action()
		  
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If SerialVerify(txfInsertSerial.Text) = True Then
		    SoftReg = True
		    showDialog ("InfoSerial")
		    txaInfoSerial.Text = txfInsertSerial.Text
		    Reg_Save(txfInsertSerial.Text)
		    
		  Else
		    SoftReg = False
		    MsgBox "The serial number is incorrect for this software "+SoftName+" "+SoftVersion+" version or has expired." + EndOfLine _
		    + "Please insert correct Serial number for this version "+SoftVersion
		    showDialog("RegStart")
		    
		  End If
		  
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnInsertSerialCancel
	#tag Event
		Sub Action()
		  showDialog("RegStart")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRegFree
	#tag Event
		Sub Action()
		  SendReg
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushRegFreeCancel
	#tag Event
		Sub Action()
		  showDialog("RegStart")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRegStartNext
	#tag Event
		Sub Action()
		  If rbRegStartFreeware.Value = True Then
		    customerRegType = "RegFreeAndTrial"
		    showDialog("RegFreeAndTrial")
		  End If
		  If rbRegStartHaveSerial.Value = True Then
		    customerRegType = "HaveSerial"
		    showDialog("InsertSerial")
		  End If
		  If rbRegStartRegFull.Value = True Then
		    customerRegType = "RegFull"
		    showDialog("RegFull")
		  End If
		  If rbRegStartBuySoft.Value = True Then
		    ShowURL(SoftRegBuyUrl)
		    customerRegType = "RegFull"
		    showDialog("RegFull")
		  End If
		  
		  'SendReg
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegSocket
	#tag Event
		Sub Error(e As RuntimeException)
		  MsgBox("Error: " + e.Message)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  Dim jsonData As Text = DefineEncoding(content, Encodings.UTF8).ToText
		  
		  If Str(jsonData).InStr("HiddenReg") > 0 Then 
		    modLog.addTestText("END "+CurrentMethodName)
		    Exit
		  End If
		  
		  If Str(jsonData).InStr("GetInfoReturnDeleteSerial") > 0 Then 
		    MsgBox "Serial nr. is deleted : false verification for this PC. "+ EndOfLine +"Please contact seller."
		    //ToDo smazat serialNr z sqlite atd.
		    DeleteSerial
		    modLog.addTestText("END "+CurrentMethodName)
		    Exit
		  End If
		  
		  If TestModeOnOf = True Or Str(jsonData).InStr("error") > 0 Then MB "jsonData prijato : " + Str(jsonData)
		  
		  If Str(jsonData).InStr("ServerError") > 0 Then
		    RegSocket.Disconnect
		    Exit
		  End If
		  
		  If Str(jsonData).InStr("SerialNr") > 0 Then
		    Dim dicJson As Xojo.Core.Dictionary
		    dicJson = Xojo.Data.ParseJSON(jsonData)
		    Dim SerialNumber As  String = dicJson.Value("SerialNr")
		    
		    'Get_email = RC4( DecodeHex(Get_email), Get_rnd_key)
		    
		    SoftReg = True
		    Reg_Save (SerialNumber)
		    showDialog("InfoSerial")
		    txaInfoSerial.Text = SerialNumber
		    RegSocket.Disconnect
		    
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
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
	#tag ViewProperty
		Name="SoftReg"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SoftRegBuyOn"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
