#tag Window
Begin Window wCal
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   5
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   207
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Calendar"
   Visible         =   True
   Width           =   194
   Begin PopupMenu puMonth
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "January\rFebruary\rMarch\rApril\rMay\rJune\rJuly\rAugust\rSeptember\rOctober\rNovember\rDecember"
      Italic          =   False
      Left            =   11
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
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PopupMenu puYear
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "2010\r2011\r2012\r2013"
      Italic          =   False
      Left            =   123
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin Listbox lbCal
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   18
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   1
      GridLinesVertical=   1
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   125
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "S,M,T,W,T,F,S"
      Italic          =   False
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   False
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   31
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   172
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin BevelButton btnLeft
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   True
      ButtonType      =   0
      Caption         =   "<"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   155
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin BevelButton btnRight
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   True
      ButtonType      =   0
      Caption         =   ">"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   53
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   155
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin BevelButton btnToday
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   True
      ButtonType      =   0
      Caption         =   "."
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   32
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   155
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin Label lblDate
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
      Left            =   11
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
      Text            =   "Untitled"
      TextAlign       =   1
      TextColor       =   &c0000FF00
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   180
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   172
   End
   Begin BevelButton btnCancel
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   20
      HelpTag         =   ""
      Icon            =   67302984
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   163
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   155
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   20
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub AddDay(byref dt as date, optional NumDays As Integer = 1)
		  dt.TotalSeconds = dt.TotalSeconds + (SecsInDay * NumDays)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoChange()
		  dim dt As new Date
		  dt.TotalSeconds = 0
		  dt.Day = IntDate.Day
		  dt.Month = puMonth.ListIndex + 1
		  dt.Year = Val(puYear.Text)
		  IntDate.TotalSeconds = dt.TotalSeconds
		  SetCal
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDate(StartDate As Date, optional BCol As Color = &cFFFFFF, optional X As Integer = 0, optional Y As Integer = 0, optional Prnt As MagicListBox = nil) As Date
		  OrigIntDate = new Date
		  IntDate = new Date
		  IntDate.TotalSeconds = StartDate.TotalSeconds
		  IntDate.Hour = 0
		  IntDate.Minute = 0
		  IntDate.Second = 0
		  OrigIntDate.TotalSeconds = IntDate.TotalSeconds
		  
		  wCal.BackColor = BCol
		  
		  if Prnt <> nil then
		    
		    if Prnt.Months = "" then
		      Prnt.Months = "January,February,March,April,May,June,July,August,September,October,November,December"
		    end if
		    
		    dim m() As String = Prnt.Months.Split(",")
		    
		    if m.Ubound = 11 then
		      puMonth.DeleteAllRows
		      for each lp as string in m
		        puMonth.AddRow lp
		      next
		    end if
		    
		    if Prnt.CalDays = "" then
		      Prnt.CalDays = "S,M,T,W,T,F,S"
		    end if
		    
		    dim d() As String = Prnt.CalDays.Split(",")
		    
		    if d.Ubound = 6 then
		      dim s2 As String = ""
		      for lp as integer = 0 to 6
		        s2 = s2 + d(lp).Left(1) + Chr(9)
		      next
		      s2 = s2.Left(s2.Len-1)
		      s2 = s2.Uppercase
		      lbCal.InitialValue = s2
		    end if
		    
		  end if
		  
		  wCal.Setup
		  
		  if X = 0 then
		    wCal.Left = System.MouseX
		  else
		    wCal.Left = X
		  end if
		  
		  if Y = 0 then
		    wCal.Top = System.MouseY
		  else
		    wCal.Top = Y
		  end if
		  
		  if wCal.Left < 0 then
		    wCal.Left = 0
		  end if
		  
		  if wCal.Left + wCal.Width > Screen(0).AvailableWidth then
		    wCal.Left = Screen(0).AvailableWidth - wCal.Width
		  end if
		  
		  if wCal.Top + wCal.Height > Screen(0).AvailableHeight then
		    wCal.Top = Screen(0).AvailableHeight - wCal.Height
		  end if
		  
		  wCal.ShowModal
		  
		  Return IntDate
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsToday() As Boolean
		  dim dt As new date
		  dt.hour = 0
		  dt.Minute = 0
		  dt.Second = 0
		  
		  if dt.TotalSeconds = OrigIntDate.TotalSeconds then
		    Return True
		  else
		    Return False
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MinusDay(byref dt as date, optional NumDays As Integer = 1)
		  dt.TotalSeconds = dt.TotalSeconds - (SecsInDay * NumDays)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetSelect()
		  for row as integer = 0 to 5
		    for column as integer = 0 to 6
		      CellSelect(row, column) = 0
		    next
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCal()
		  ResetSelect
		  lbCal.DeleteAllRows
		  
		  dim sdate As new date
		  dim edate as new date
		  sdate.TotalSeconds = IntDate.TotalSeconds
		  sdate.Day = 1
		  edate.TotalSeconds = sdate.TotalSeconds
		  
		  if edate.Month = 12 then
		    edate.Year = edate.Year + 1
		    edate.Month = 1
		  else
		    edate.Month = edate.Month + 1
		  end if
		  
		  MinusDay(edate)
		  
		  dim numdays As Integer = (edate.TotalSeconds - sdate.TotalSeconds) / SecsInDay
		  
		  dim sday As Integer = sdate.DayOfWeek
		  dim dshow(42) As Integer
		  
		  for lp as Integer = 1 to 42
		    dshow(lp) = 0
		  next
		  
		  for lp as Integer = sday to numdays + sday
		    dshow(lp) = 1
		  next
		  
		  dim count As Integer = 1
		  dim icount As Integer = 1
		  
		  for lp as Integer = 1 to 6
		    lbCal.AddRow
		    if dshow(count) = 1 then 
		      lbCal.Cell(lbCal.LastIndex, 0) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 1) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 2) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 3) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 4) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 5) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		    if dshow(count) = 1 then
		      lbCal.Cell(lbCal.LastIndex, 6) = Str(icount)
		      icount = icount + 1
		    end if
		    count = count + 1
		  next
		  
		  lblDate.Text = IntDate.LongDate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Setup()
		  NoChange = True
		  puMonth.ListIndex = IntDate.Month - 1
		  
		  dim dt As new Date
		  dim eyear As Integer = dt.Year + 30
		  dim syear As Integer = IntDate.Year - 15
		  dim count As Integer = 0
		  
		  puYear.DeleteAllRows
		  for lp as Integer = syear to eyear
		    puYear.AddRow Str(lp)
		    if lp = IntDate.Year then
		      puYear.ListIndex = count
		    end if
		    count = count + 1
		  next
		  
		  ResetSelect
		  NoChange = False
		  SetCal
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CellSelect(5,6) As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IntDate As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NoChange As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OrigIntDate As Date
	#tag EndProperty


	#tag Constant, Name = SecsInDay, Type = Double, Dynamic = False, Default = \"86400", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events puMonth
	#tag Event
		Sub Change()
		  if not NoChange then
		    DoChange
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events puYear
	#tag Event
		Sub Change()
		  if not NoChange then
		    DoChange
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbCal
	#tag Event
		Sub Open()
		  me.InitialValue = ReplaceAll(me.InitialValue, ",", Chr(9))
		  
		  for lp as integer = 0 to me.ColumnCount - 1
		    me.ColumnAlignment(lp) = Listbox.AlignCenter
		  next
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  g.ForeColor = &cFFFFFF00
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  if CellSelect(row, column) = 1 then
		    g.ForeColor = &c66CCFF00
		    g.FillRect(0 ,0, g.Width, g.Height)
		    g.ForeColor = &c00000000
		    g.DrawRect(0, 0, g.Width, g.Height)
		    Return True
		  end if
		  
		  if OrigIntDate <> nil then
		    If puMonth.ListIndex = OrigIntDate.Month - 1 and Val(puYear.Text) = OrigIntDate.Year and Val(me.Cell(row, column)) = OrigIntDate.Day then
		      g.ForeColor = &cFFFF6600
		      g.FillRect(0 ,0, g.Width, g.Height)
		      Return True
		    end if
		  end if
		  
		  dim dt As new Date
		  dt.Hour = 0
		  dt.Minute = 0
		  dt.Second = 0
		  
		  If puMonth.ListIndex = dt.Month - 1 and Val(puYear.Text) = dt.Year and Val(me.Cell(row, column)) = dt.Day then
		    'g.ForeColor = &c66CCFF00
		    'g.FillRect(0 ,0, g.Width, g.Height)
		    g.ForeColor = &cFF000000
		    g.PenWidth = 2
		    g.DrawRoundRect(0, 0, g.Width, g.Height, 20, 20)
		    g.PenWidth = 1
		    Return True
		  end if
		  
		  'if me.Cell(row, column) = "" then
		  'g.ForeColor = &c99999900
		  'g.FillRect(0 ,0, g.Width, g.Height)
		  'Return True
		  'end if
		  
		  'if column = 0 or column = 6 then
		  'g.ForeColor = &cCCFF6600
		  'g.FillRect(0 ,0, g.Width, g.Height)
		  'Return True
		  'end if
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused y
		  #pragma Unused x
		  
		  if me.Cell(row, column) = "" then Return False
		  
		  ResetSelect
		  CellSelect(row, column) = 1
		  IntDate.Day = Val(me.Cell(row, column))
		  IntDate.Month = puMonth.ListIndex + 1
		  IntDate.Year = Val(puYear.Text)
		  lblDate.Text = IntDate.LongDate
		  Refresh
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim row,column as Integer
		  row=Me.RowFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  column=Me.ColumnFromXY(System.MouseX - Me.Left - Self.Left,System.MouseY - Me.Top - Self.Top)
		  
		  dim dy As Integer = Val(me.Cell(row, column))
		  
		  if dy = 0 then exit sub
		  
		  dim mth As Integer = puMonth.ListIndex + 1
		  dim yr As Integer = Val(puYear.Text)
		  
		  IntDate.TotalSeconds = 0
		  IntDate.Year = yr
		  IntDate.Month = mth
		  IntDate.Day = dy
		  
		  Close
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused y
		  #pragma Unused x
		  #pragma Unused row
		  
		  if column = 0 or column = 6 then
		    g.ForeColor = &c99999900
		  else
		    g.ForeColor = &c0000FF00
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Function SortColumn(column As Integer) As Boolean
		  #pragma Unused column
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnLeft
	#tag Event
		Sub Action()
		  if puMonth.ListIndex = 0 then
		    puMonth.ListIndex = 11
		    puYear.ListIndex = puYear.ListIndex - 1
		  else
		    puMonth.ListIndex = puMonth.ListIndex - 1
		  end if
		  
		  SetCal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRight
	#tag Event
		Sub Action()
		  if puMonth.ListIndex = 11 then
		    puMonth.ListIndex = 0
		    puYear.ListIndex = puYear.ListIndex + 1
		  else
		    puMonth.ListIndex = puMonth.ListIndex + 1
		  end if
		  
		  SetCal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnToday
	#tag Event
		Sub Action()
		  dim dt As new date
		  dt.Hour = 0
		  dt.Minute = 0
		  dt.Second = 0
		  'dt.Day = 1
		  IntDate.TotalSeconds = dt.TotalSeconds
		  
		  puMonth.ListIndex = dt.Month - 1
		  
		  for lp as Integer = 0 to puYear.ListCount - 1
		    if dt.Year = Val(puYear.List(lp)) then
		      puYear.ListIndex = lp
		    end if
		  next
		  
		  SetCal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  IntDate.TotalSeconds = OrigIntDate.TotalSeconds
		  Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="FullScreenButton"
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
		Name="Interfaces"
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
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
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
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
