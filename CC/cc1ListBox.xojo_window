#tag Window
Begin ContainerControl cc1ListBox
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
   Height          =   622
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
   Width           =   1280
   Begin Rectangle rPozadi
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   622
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   42
      TabPanelIndex   =   0
      Top             =   0
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   1280
      Begin MagicListBox lstListBox
         AlternateColor  =   &cEFEFEF00
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BackColor       =   &cFFFFFF00
         Bold            =   True
         Border          =   True
         BoxColor        =   &c00000000
         CalDays         =   ""
         ColAlignment    =   ""
         ColumnCount     =   5
         ColumnsResizable=   True
         ColumnTypes     =   ""
         ColumnWidths    =   ""
         CurrencyFormat  =   "#,0.00;(#,0.00);\\"
         DataField       =   ""
         DataSource      =   ""
         DateFormat      =   "dd-mm-yyyy"
         DateTimeFormat  =   "dd-mm-yy hh:tt ap"
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   2
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   529
         HelpTag         =   ""
         HideColumns     =   "0"
         Hierarchical    =   False
         HighlightColor  =   &cFF000000
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         InitialValue    =   "Id	Datum	Název poznámky	Comment	Status"
         IntegerFormat   =   "-#"
         Italic          =   False
         Left            =   86
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Months          =   ""
         MonthsShort     =   ""
         NumberFormat    =   "-#0.00"
         ProgBarColor    =   &c00FF4000
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   11
         TableType       =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         TimeFormat      =   "HH:MMap"
         Top             =   54
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1184
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PopupMenu popPolozekNaStrance
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   31
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         InitialValue    =   "20\r\n50\r\n100\r\n300"
         Italic          =   False
         Left            =   750
         ListIndex       =   0
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
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   588
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   59
      End
      Begin BevelButton btnNext
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &cFFFF8000
         Bevel           =   0
         Bold            =   True
         ButtonType      =   0
         Caption         =   ">>"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   True
         HasMenu         =   0
         Height          =   38
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   1130
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   24.0
         TextUnit        =   0
         Top             =   583
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   140
      End
      Begin BevelButton btnBack
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &cFFFF8000
         Bevel           =   0
         Bold            =   True
         ButtonType      =   0
         Caption         =   "<<"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   True
         HasMenu         =   0
         Height          =   38
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   948
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   24.0
         TextUnit        =   0
         Top             =   583
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   140
      End
      Begin Label lblZaznamuNaStrance
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   630
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
         Text            =   "Záznamů na stránce :"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   108
      End
      Begin Label lblAktulniStranka
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   1092
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
         Text            =   "1"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   590
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   36
      End
      Begin Label lblCelkemPolozek
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   188
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
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   41
      End
      Begin Label lblZobrazenoPolozek
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   306
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
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   56
      End
      Begin Label lblZobrazeno1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   241
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Po Filtru:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   53
      End
      Begin Label lblCelkemStranek
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   902
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   590
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   32
      End
      Begin Label lblPocetStranek
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   821
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Počet stránek:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   81
      End
      Begin Rectangle Rectangle1
         AutoDeactivate  =   True
         BorderWidth     =   0
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &cEAF4FF00
         Height          =   48
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         Top             =   0
         TopLeftColor    =   &c00000000
         Transparent     =   False
         Visible         =   True
         Width           =   1280
         Begin Label lblPoznamky
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   37
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle1"
            Italic          =   False
            Left            =   86
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
            Text            =   "Název sekce"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   24.0
            TextUnit        =   0
            Top             =   4
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin BevelButton btnHelp
            AcceptFocus     =   True
            AutoDeactivate  =   True
            BackColor       =   &cFFFF8000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "?"
            CaptionAlign    =   3
            CaptionDelta    =   0
            CaptionPlacement=   4
            Enabled         =   True
            HasBackColor    =   True
            HasMenu         =   0
            Height          =   48
            HelpTag         =   ""
            Icon            =   0
            IconAlign       =   4
            IconDX          =   0
            IconDY          =   0
            Index           =   -2147483648
            InitialParent   =   "Rectangle1"
            Italic          =   False
            Left            =   1222
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   0
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   32.0
            TextUnit        =   0
            Top             =   0
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   48
         End
         Begin BevelButton btnFiltr
            AcceptFocus     =   True
            AutoDeactivate  =   True
            BackColor       =   &c80FFFF00
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Filtr Off"
            CaptionAlign    =   3
            CaptionDelta    =   0
            CaptionPlacement=   2
            Enabled         =   True
            HasBackColor    =   True
            HasMenu         =   0
            Height          =   48
            HelpTag         =   ""
            Icon            =   1257072639
            IconAlign       =   2
            IconDX          =   0
            IconDY          =   0
            Index           =   -2147483648
            InitialParent   =   "Rectangle1"
            Italic          =   False
            Left            =   1115
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   0
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   0
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin Label lblCelkemZaznamu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   86
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
         Text            =   "Celkem záznamů:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   592
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin BevelButton btnSmazat
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &cFF808000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Smazat"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   True
         HasMenu         =   0
         Height          =   64
         HelpTag         =   ""
         Icon            =   1213523967
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   549
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   64
      End
      Begin BevelButton btnNovy
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c80FF8000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Nová"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   True
         HasMenu         =   0
         Height          =   64
         HelpTag         =   ""
         Icon            =   713426943
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   54
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   64
      End
      Begin BevelButton btnKopirovat
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Kopírovat"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   64
         HelpTag         =   ""
         Icon            =   1138941951
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   64
      End
      Begin BevelButton btnUpravit
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "Upravit"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   4
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   64
         HelpTag         =   ""
         Icon            =   1113370623
         IconAlign       =   4
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "rPozadi"
         Italic          =   False
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   194
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   64
      End
   End
   Begin Rectangle rW
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &c45454500
      Height          =   231
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   374
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Top             =   -243
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   False
      Width           =   531
      Begin TextArea txaPoznamka
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &c45454500
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   71
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   394
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   0.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -149
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   490
      End
      Begin PushButton btnUlozitNovy
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Uložit jako Nový"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   789
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -66
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnUlozit
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Uložit"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   679
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -66
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnStorno
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Storno"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   394
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -66
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblNazevPoznamky
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   394
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
         Text            =   "Název poznámky :"
         TextAlign       =   0
         TextColor       =   &cFF800000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -223
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField txfNazevPoznamky
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
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   394
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Karel"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -202
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   491
      End
      Begin Label lblPoznamka
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rW"
         Italic          =   False
         Left            =   394
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Poznámka"
         TextAlign       =   0
         TextColor       =   &cFF80C000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   -168
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   64
      End
   End
   Begin Rectangle rHelp
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   650
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1292
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      Top             =   0
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   False
      Width           =   1280
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rHelp"
         Italic          =   False
         Left            =   1921
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
         Text            =   "Help"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Cooper Black"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   301
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnSmazatStorno1
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Storno"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rHelp"
         Italic          =   False
         Left            =   1312
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
         Top             =   589
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin Rectangle rSmazatAnoNe
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFF202500
      Height          =   124
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   989
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      Top             =   700
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   False
      Width           =   291
      Begin PushButton btnSmazatStorno
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Storno"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rSmazatAnoNe"
         Italic          =   False
         Left            =   1001
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
         Top             =   775
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnSmazatAno
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "ANO"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rSmazatAnoNe"
         Italic          =   False
         Left            =   1169
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
         Top             =   775
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblSmazatAnoNe
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   34
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rSmazatAnoNe"
         Italic          =   False
         Left            =   1009
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Opravdu SMAZAT ?"
         TextAlign       =   1
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   24.0
         TextUnit        =   0
         Top             =   720
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   244
      End
   End
   Begin Rectangle rWFiltr
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &c45454500
      Height          =   231
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   374
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      Top             =   700
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   False
      Width           =   531
      Begin PushButton btnFilterFiltr
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Filtruj"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   789
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   877
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnFiltrStorno
         AutoDeactivate  =   True
         Bold            =   True
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Zrusit Filtr"
         Default         =   False
         Enabled         =   True
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   394
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   877
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblFiltrNazevPoznamky
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   394
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
         Text            =   "Hledej:"
         TextAlign       =   2
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   720
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TextField txfFiltrNazevPoznamky
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
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   486
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   719
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   403
      End
      Begin Label lblFiltrDatumDo2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   674
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
         Text            =   "Do:"
         TextAlign       =   0
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   752
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   28
      End
      Begin Label lblFiltrDatumOd2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   394
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Datum Od:"
         TextAlign       =   2
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   752
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lblFiltrDatumDo
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   730
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Datum Do"
         TextAlign       =   1
         TextColor       =   &cFF800000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   751
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   159
      End
      Begin Label lblFiltrDatumOd
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   486
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Datum Od"
         TextAlign       =   1
         TextColor       =   &cFF800000
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   751
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   165
      End
      Begin Label lblFiltrStatus
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         Italic          =   False
         Left            =   394
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Status probíhá:"
         TextAlign       =   2
         TextColor       =   &cFFFFFF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   784
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PopupMenu popFiltrStatus
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rWFiltr"
         InitialValue    =   "*.*\r\nAno\r\nNe"
         Italic          =   False
         Left            =   486
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   783
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   165
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  /////////////////////////////////Theme position for resizer
		  rW.Top = 200
		  rWFiltr.Top = 200
		  rSmazatAnoNe.Top = 200
		  rSmazatAnoNe.Left = 532
		  rHelp.Top = 0
		  rHelp.Left = 0
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub L_lstListBox()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  sql = "SELECT COUNT(*) AS RowCount FROM f_comment"
		  rs = modDB.DbSelect("SQLite",sql)
		  
		  RowCount = rs.Field("RowCount").IntegerValue
		  rs.close
		  
		  lblCelkemPolozek.Text = Str(RowCount)
		  maxPages = RowCount \ Val(popPolozekNaStrance.Text)
		  lblCelkemStranek.Text = Str(maxPages + 1)
		  currentPage = Val(lblAktulniStranka.Text)
		  If  Val(lblAktulniStranka.Text) *  Val(popPolozekNaStrance.Text) < RowCount Then
		    lblZobrazenoPolozek.Text = Str(Val(lblAktulniStranka.Text) *  Val(popPolozekNaStrance.Text))
		  Else
		    If Val(lblAktulniStranka.Text) = 1 Then
		      lblZobrazenoPolozek.Text = Str(RowCount)
		    Else
		      lblZobrazenoPolozek.Text = Str(RowCount - ((Val(lblAktulniStranka.Text)-1) * Val(popPolozekNaStrance.Text)))
		    End If
		  End If
		  PageLimidStart = currentPage * Val(popPolozekNaStrance.Text) - Val(popPolozekNaStrance.Text)
		  PageLimidEnd = Val(popPolozekNaStrance.Text)
		  
		  sql = "SELECT f_comment.id, f_comment.Datefx, f_comment.Namefx, f_comment.Comment, f_comment.Status FROM f_comment ORDER BY f_comment.Datefx Asc LIMIT "+Str(PageLimidStart)+", "+Str(PageLimidEnd)+""
		  rs = modDB.DbSelect("SQLite",sql)
		  
		  lstListBox.Reset
		  lstListBox.DeleteAllRows
		  
		  If rs <> Nil Then
		    While Not rs.EOF
		      lstListBox.AddRow
		      lstListBox.SetValue(0, modDB.rs.field("id").integerValue)
		      lstListBox.SetValue(1, modDB.rs.field("Datefx").stringValue)
		      lstListBox.SetValue(2, modDB.rs.field("Namefx").stringValue)
		      lstListBox.SetValue(3, modDB.rs.field("Comment").stringValue)
		      lstListBox.SetValue(4, modDB.rs.field("Status").stringValue)
		      
		      rs.MoveNext
		    Wend
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub L_lstListBoxFilter()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  sql = "SELECT COUNT(*) AS RowCount FROM f_comment"
		  rs = modDB.DbSelect("SQLite",sql)
		  
		  RowCount = rs.Field("RowCount").IntegerValue
		  rs.close
		  
		  lblCelkemPolozek.Text = Str(RowCount)
		  maxPages = RowCount \ Val(popPolozekNaStrance.Text)
		  lblCelkemStranek.Text = Str(maxPages + 1)
		  currentPage = Val(lblAktulniStranka.Text)
		  If  Val(lblAktulniStranka.Text) *  Val(popPolozekNaStrance.Text) < RowCount Then
		    lblZobrazenoPolozek.Text = Str(Val(lblAktulniStranka.Text) *  Val(popPolozekNaStrance.Text))
		  Else
		    If Val(lblAktulniStranka.Text) = 1 Then
		      lblZobrazenoPolozek.Text = Str(RowCount)
		    Else
		      lblZobrazenoPolozek.Text = Str(RowCount - ((Val(lblAktulniStranka.Text)-1) * Val(popPolozekNaStrance.Text)))
		    End If
		  End If
		  PageLimidStart = currentPage * Val(popPolozekNaStrance.Text) - Val(popPolozekNaStrance.Text)
		  PageLimidEnd = Val(popPolozekNaStrance.Text)
		  
		  
		  
		  
		  
		  sql = "SELECT f_comment.id, f_comment.Datefx, f_comment.Namefx, f_comment.Comment, f_comment.Status FROM f_comment ORDER BY f_comment.Datefx Asc LIMIT "+Str(PageLimidStart)+", "+Str(PageLimidEnd)+""
		  rs = modDB.DbSelect("SQLite",sql)
		  
		  lstListBox.Reset
		  lstListBox.DeleteAllRows
		  
		  If rs <> Nil Then
		    While Not rs.EOF
		      lstListBox.AddRow
		      lstListBox.SetValue(0, modDB.rs.field("id").integerValue)
		      lstListBox.SetValue(1, modDB.rs.field("Datefx").stringValue)
		      lstListBox.SetValue(2, modDB.rs.field("Namefx").stringValue)
		      lstListBox.SetValue(3, modDB.rs.field("Comment").stringValue)
		      lstListBox.SetValue(4, modDB.rs.field("Status").stringValue)
		      
		      rs.MoveNext
		    Wend
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		currentPage As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		maxPages As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PageLimidEnd As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PageLimidStart As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RowCount As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events lstListBox
	#tag Event
		Sub Open()
		  Me.DefaultRowHeight =25
		  L_lstListBox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popPolozekNaStrance
	#tag Event
		Sub Change()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  currentPage = 1
		  lblAktulniStranka.Text = Str(currentPage)
		  L_lstListBox
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNext
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If currentPage < maxPages + 1 Then
		    currentPage = currentPage + 1
		    lblAktulniStranka.Text = Str(currentPage)
		    L_lstListBox
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBack
	#tag Event
		Sub Action()
		  modLog.addTestText("START "+CurrentMethodName)
		  
		  If currentPage > 1 Then
		    currentPage = currentPage - 1
		    lblAktulniStranka.Text = Str(currentPage)
		    L_lstListBox
		  End If
		  
		  modLog.addTestText("END "+CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnHelp
	#tag Event
		Sub Action()
		  rHelp.Visible = True
		  rPozadi.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFiltr
	#tag Event
		Sub Action()
		  rWFiltr.Visible = True
		  rPozadi.Enabled = False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSmazat
	#tag Event
		Sub Action()
		  rSmazatAnoNe.Visible = True
		  rPozadi.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNovy
	#tag Event
		Sub Action()
		  rW.Visible = True
		  rPozadi.Enabled = False
		  
		  btnUlozit.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnKopirovat
	#tag Event
		Sub Action()
		  rW.Visible = True
		  rPozadi.Enabled = False
		  
		  btnUlozit.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnUpravit
	#tag Event
		Sub Action()
		  rW.Visible = True
		  rPozadi.Enabled = False
		  
		  btnUlozitNovy.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnUlozitNovy
	#tag Event
		Sub Action()
		  rW.Visible = False
		  rPozadi.Enabled = True
		  
		  btnUlozit.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnUlozit
	#tag Event
		Sub Action()
		  rW.Visible = False
		  rPozadi.Enabled = True
		  
		  btnUlozitNovy.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStorno
	#tag Event
		Sub Action()
		  rW.Visible = False
		  rPozadi.Enabled = True
		  
		  btnUlozit.Enabled = True
		  btnUlozitNovy.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSmazatStorno1
	#tag Event
		Sub Action()
		  rHelp.Visible = False
		  rPozadi.Enabled = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSmazatStorno
	#tag Event
		Sub Action()
		  rSmazatAnoNe.Visible = False
		  rPozadi.Enabled = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSmazatAno
	#tag Event
		Sub Action()
		  rSmazatAnoNe.Visible = False
		  rPozadi.Enabled = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFilterFiltr
	#tag Event
		Sub Action()
		  rWFiltr.Visible = False
		  rPozadi.Enabled = True
		  
		  L_lstListBoxFilter
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFiltrStorno
	#tag Event
		Sub Action()
		  rWFiltr.Visible = False
		  rPozadi.Enabled = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblFiltrDatumDo
	#tag Event
		Sub Open()
		  d = New date
		  d.Day = d.Day + 1
		  Me.Text = d.SQLDate //d.AbbreviatedDate
		  'L_PrijemVydej(lblPvDatumOd.Text.ReplaceAll("-",""), lblPvDatumDo.Text.ReplaceAll("-",""))
		  'S_PrijemVydej_Filter
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  d.totalSeconds = Calendar.GetDate(d)
		  'lblDatumOd.Text = d.AbbreviatedDate
		  Me.Text = d.SQLDate
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblFiltrDatumOd
	#tag Event
		Sub Open()
		  d = New date
		  d.Day = 1
		  d.Month = 1
		  Me.Text = d.SQLDate //d.AbbreviatedDate
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  d.totalSeconds = Calendar.GetDate(d)
		  'lblDatumOd.Text = d.AbbreviatedDate
		  Me.Text = d.SQLDate
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
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
		Visible=true
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
		Name="currentPage"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="maxPages"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="PageLimidEnd"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="PageLimidStart"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RowCount"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
