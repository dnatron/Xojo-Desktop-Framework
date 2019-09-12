#tag Class
Protected Class MagicListBox
Inherits ListBox
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Select case ColType(column)
		    
		  case ctCheckBox
		    select case CellState(row, column)
		    case CheckBox.CheckedStates.Checked
		      CellTag(row, column) = True
		    case CheckBox.CheckedStates.Indeterminate
		      CellTag(row, column) = False
		    case CheckBox.CheckedStates.Unchecked
		      CellTag(row, column) = False
		    end select
		    
		    CellCheckBoxStateChange(row, column, CellTag(row, column))
		    
		  case ctString
		    CellTag(row, column) = Cell(row, column)
		    CellTextChanged(Cell(row, column), row, column)
		    
		  case ctCurrency
		    CellTag(row, column) = Val(Trim(Cell(row, column)))
		    Cell(row, column) = Format(CellTag(row, column), CurrencyFormat)
		    CellCurrencyChanged(CellTag(row, column), row, column)
		    
		  case ctInteger
		    CellTag(row, column) = Val(Trim(Cell(row, column)))
		    Cell(row, column) = Format(CellTag(row, column), IntegerFormat)
		    CellIntegerChanged(CellTag(row, column), row, column)
		    
		  case ctNumber
		    CellTag(row, column) = Val(Trim(Cell(row, column)))
		    Cell(row, column) = Format(CellTag(row, column), NumberFormat)
		    CellNumberChanged(CellTag(row, column), row, column)
		    
		  case ctDateTime
		    dim dt As new date
		    try
		      dt.SQLDateTime = Cell(row, column)
		      CellTag(row, column) = dt.TotalSeconds
		      Cell(row, column) = FormattedDate(dt, DateTimeFormat)
		      CellDateTimeChanged(dt, row, column)
		    catch err as UnsupportedFormatException
		      MsgBox "Could not convert the date/time expression entered."
		      dt.TotalSeconds = CellTag(row, column)
		      Cell(row, column) = FormattedDate(dt, DateTimeFormat)
		    end try
		    
		  end Select
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  dim intBackColor As Color
		  
		  if row mod 2 = 0 then
		    intBackColor = AlternateColor
		  else
		    intBackColor = BackColor
		  end if
		  
		  g.ForeColor = intBackColor
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  if row >= ListCount then Return True
		  if column >= ColumnCount then Return True
		  
		  if Selected(row) then
		    g.ForeColor = HighlightColor
		    g.FillRect(0, 0, g.Width, g.Height)
		  end if
		  
		  g.ForeColor = BoxColor
		  
		  if Selected(row) then
		    g.ForeColor = OppositeColor(g.ForeColor)
		  end if
		  
		  select case TableType
		  case 1 ' Round
		    g.DrawRoundRect(2, 2, g.Width - 4, g.Height - 4, 5, 5)
		    
		  case 2 ' Square
		    g.DrawRect(2, 2, g.Width - 4, g.Height - 4)
		    
		  end Select
		  
		  select case ColType(column)
		  case ctDropDown
		    if Selected(row) then
		      if Cell(row, column) <> "" then
		        DrawRightArrow(g, HighlightColor)
		        DrawLeftArrow(g, HighlightColor)
		      else
		        DrawDownArrow(g, DropOrient(column), HighlightColor)
		      end if
		    else
		      if Cell(row, column) <> "" then
		        DrawRightArrow(g, intBackColor)
		        DrawLeftArrow(g, intBackColor)
		      else
		        DrawDownArrow(g, DropOrient(column), intBackColor)
		      end if
		    end if
		    
		  case ctProgressBar
		    g.ForeColor = &cFFFFFF
		    g.FillRect(4, 4, g.Width - 8, g.Height - 8)
		    if Selected(row) then
		      g.ForeColor = &cFFFFFF
		    else
		      g.ForeColor = &c000000
		    end if
		    g.DrawRect(4, 4, g.Width - 8, g.Height - 8)
		    
		  end Select
		  
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  
		  try
		    if not CellsEnabled(row, column) then return True
		  catch
		  end try
		  
		  if ColType(column) = ctDropDown then
		    try
		      ' 2014-01-31
		      ' Added as user request
		      dim ovalue As String = Cell(row, column)
		      ' End add
		      PopUpCellChoices(row, column, DropList(row, column))
		      CellTag(row, column) = Cell(row, column)
		      ' 2014-01-31 old line
		      ' CellDropDownChanged(row, column, Cell(row, column), ovalue)
		      ' 2014-01-31 new line
		      CellDropDownChanged(row, column, Cell(row, column), ovalue)
		    catch
		    end try
		    Return True
		  end if
		  
		  if ColEdit(column) then
		    
		    select case ColType(column)
		      
		    case ctCurrency
		      Cell(row, column) = Str(CellTag(row, column), "-#.####")
		      CellType(row, column) = Listbox.TypeEditableTextField
		      EditCell(row, column)
		      Return True
		      
		    case ctDate
		      dim dt As new date
		      dt.TotalSeconds = CellTag(row, column)
		      dt.TotalSeconds = wCal.GetDate(dt, &cFFFFFF, 0,0, self).TotalSeconds
		      CellTag(row, column) = dt.TotalSeconds
		      Cell(row, column) = FormattedDate(dt, DateFormat)
		      CellDateChanged(dt, row, column)
		      Return True
		      
		    case ctDateTime
		      dim dt As new date
		      dt.TotalSeconds = CellTag(row, column)
		      Cell(row, column) = dt.SQLDateTime
		      CellType(row, column) = Listbox.TypeEditableTextField
		      EditCell(row, column)
		      Return True
		      
		    case ctTime
		      dim dt As new date
		      dt.TotalSeconds = CellTag(row, column)
		      dt.TotalSeconds = wTim.GetTime(dt).TotalSeconds
		      CellTag(row, column) = dt.TotalSeconds
		      Cell(row, column) = FormattedTime(dt, TimeFormat)
		      CellTimeChanged(dt, row, column)
		      Return True
		      
		    case ctInteger
		      Cell(row, column) = Str(CellTag(row, column), "-#")
		      CellType(row, column) = Listbox.TypeEditableTextField
		      EditCell(row, column)
		      Return True
		      
		    case ctNumber
		      Cell(row, column) = Str(CellTag(row, column), "-#.########")
		      CellType(row, column) = Listbox.TypeEditableTextField
		      EditCell(row, column)
		      Return True
		      
		    case ctString
		      Cell(row, column) = CellTag(row, column)
		      CellType(row, column) = Listbox.TypeEditableTextField
		      EditCell(row, column)
		      Return True
		      
		    end Select
		    
		  end if
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub CellGotFocus(row as Integer, column as Integer)
		  #pragma Unused row
		  #pragma Unused column
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  #pragma Unused row
		  #pragma Unused column
		  #pragma Unused key
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub CellLostFocus(row as Integer, column as Integer)
		  #pragma Unused row
		  #pragma Unused column
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  #pragma Unused row
		  #pragma Unused column
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  
		  if row >= ListCount then Return False
		  
		  g.ForeColor = TextColor
		  
		  if Selected(row) then
		    g.ForeColor = OppositeColor(g.ForeColor)
		  end if
		  
		  if ColumnAlignment(column) = Listbox.AlignDecimal then Return False
		  
		  if ColType(column) = ctProgressBar then
		    if UBound(PBMaxVals) >= row then
		      dim vlu As Double = CellTag(row, column)
		      dim pc As Double = vlu / PBMaxVals(row, column)
		      if pc > 1 then pc = 1
		      dim pxls As Integer = (g.Width - 6) * pc
		      g.ForeColor = ProgBarColor
		      g.FillRect(1, 5, pxls, g.Height - 10)
		      g.ForeColor = TextColor
		      dim pcs As String = Str(pc * 100, "##0") + "%"
		      WriteString(g, pcs, posCenter)
		    end if
		    Return True
		  end if
		  
		  dim st As String = Cell(row, column)
		  
		  select case ColumnAlignment(column)
		  case Listbox.AlignDefault, Listbox.AlignLeft
		    WriteString(g, st, posLeft)
		    
		  case Listbox.AlignCenter
		    WriteString(g, st, posCenter)
		    
		  case Listbox.AlignRight
		    WriteString(g, st, posRight)
		    
		  end Select
		  
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub CollapseRow(row As Integer)
		  #pragma Unused row
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  #pragma Unused row1
		  #pragma Unused row2
		  #pragma Unused column
		  #pragma Unused result
		  
		End Function
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma Unused base
		  #pragma Unused x
		  #pragma Unused y
		  
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  #pragma Unused hitItem
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DoubleClick()
		  Dim row, column as Integer
		  
		  row = me.ListIndex
		  
		  if Me.Parent = nil then
		    column=Me.ColumnFromXY(System.MouseX - Me.Left - me.TrueWindow.Left, System.MouseY - Me.Top - me.TrueWindow.Top)
		  else
		    column=Me.ColumnFromXY(System.MouseX - Me.Left - Me.Parent.Left - me.TrueWindow.Left, System.MouseY - Me.Top - Me.Parent.Top - me.TrueWindow.Top)
		  end if
		  
		  
		  DoubleClick(row, Column)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  #pragma Unused obj
		  #pragma Unused action
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  #pragma Unused obj
		  #pragma Unused action
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  #pragma Unused obj
		  #pragma Unused action
		  #pragma Unused x
		  #pragma Unused y
		  
		End Function
	#tag EndEvent

	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  #pragma Unused newPosition
		  #pragma Unused parentRow
		  
		End Function
	#tag EndEvent

	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  #pragma Unused drag
		  #pragma Unused row
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #pragma Unused obj
		  #pragma Unused action
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  //
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  #pragma Unused row
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  //
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  #pragma Unused key
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  #pragma Unused key
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  //
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(x As Integer, y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  //
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  //
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  #pragma Unused x
		  #pragma Unused y
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  #pragma Unused deltaX
		  #pragma Unused deltaY
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  NotOpen = False
		  Reset
		  Open
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddRow(ParamArray item As String)
		  super.AddRow(item)
		  
		  dim trows As Integer = LastIndex
		  ReDim CellsEnabled(trows, ColumnCount - 1)
		  
		  for lp as integer = 0 to ColumnCount - 1
		    CellsEnabled(trows, lp) = True
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckBoxOnOff(row As Integer, col As Integer) As Boolean
		  dim ret As Boolean = False
		  
		  if row <= self.ListCount and col <= self.ColumnCount then
		    if self.CellState(row, col) = Checkbox.CheckedStates.Checked then
		      ret = True
		    end if
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckBoxOnOff(row As Integer, col As Integer, Assigns OnOff As Boolean)
		  if row <= self.ListCount and col <= self.ColumnCount then
		    if OnOff then
		      self.CellState(row, col) = Checkbox.CheckedStates.Checked
		    else
		      self.CellState(row, col) = Checkbox.CheckedStates.Unchecked
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableCell(row As Integer, column As Integer)
		  if row >= ListCount then exit sub
		  if row < 0 then exit sub
		  if column >= ColumnCount then exit sub
		  if column < 0 then exit sub
		  
		  try
		    CellsEnabled(row, column) = False
		  catch
		  end try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawDownArrow(g As Graphics, optional Orientation as string = "L", optional BackColor As Color = &cFFFFFF)
		  ' This method is used to draw the down arrow used in a listbox to show a drop-down menu.
		  ' This routine should be called in the CellBackgroundPaint method of the Listbox.
		  
		  ' Example code:
		  
		  'if column <> 3 then Return False
		  'if row >= me.ListCount then Return False
		  '
		  'me.DrawDownArrow(g, "r")
		  '
		  'Return True
		  
		  ' Parameters:
		  ' Orientation 'L' - Draw arrow on the left hand side of the cell
		  ' Orientation 'R' - Draw arrow on the right hand side of the cell
		  
		  
		  dim PicDownArrow As new Picture(11, 11, 32)
		  
		  PicDownArrow.Graphics.ForeColor = BackColor
		  PicDownArrow.Graphics.FillRect(0, 0, PicDownArrow.Graphics.Width, PicDownArrow.Graphics.Height)
		  
		  PicDownArrow.Graphics.ForeColor = colSilver
		  
		  for lp as integer = 2 to 4
		    PicDownArrow.Graphics.DrawLine(0, lp, 10, lp)
		  next
		  
		  PicDownArrow.Graphics.DrawLine(1, 5, 9, 5)
		  PicDownArrow.Graphics.DrawLine(2, 6, 8, 6)
		  PicDownArrow.Graphics.DrawLine(3, 7, 7, 7)
		  PicDownArrow.Graphics.DrawLine(4, 8, 6, 8)
		  PicDownArrow.Graphics.DrawLine(5, 9, 5, 9)
		  
		  PicDownArrow.Graphics.ForeColor = colTin
		  PicDownArrow.Graphics.DrawLine(1, 3, 9, 3)
		  PicDownArrow.Graphics.DrawLine(1, 4, 9, 4)
		  PicDownArrow.Graphics.DrawLine(2, 5, 8, 5)
		  PicDownArrow.Graphics.DrawLine(3, 6, 7, 6)
		  PicDownArrow.Graphics.DrawLine(4, 7, 6, 7)
		  PicDownArrow.Graphics.DrawLine(5, 8, 5, 8)
		  
		  ' PicDownArrow now holds a picture of the down arrow.
		  
		  dim t, l As Integer
		  t = (g.Height - 11) / 2
		  
		  if Uppercase(Orientation) = "L" then
		    l = 6
		  else
		    l = g.Width - 17
		  end if
		  
		  g.DrawPicture(PicDownArrow, l, t)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawLeftArrow(g As Graphics, optional BackColor As Color = &cFFFFFF)
		  dim p As new Picture(9, 13, 32)
		  dim g1 As Graphics = p.Graphics
		  
		  g1.ForeColor = BackColor
		  g1.FillRect(0, 0, g1.Width, g1.Height)
		  
		  g1.ForeColor = colSilver
		  g1.DrawLine(6, 0, 8, 0)
		  g1.DrawLine(5, 1, 8, 1)
		  g1.DrawLine(4, 2, 8, 2)
		  g1.DrawLine(3, 3, 8, 3)
		  g1.DrawLine(2, 4, 8, 4)
		  g1.DrawLine(1, 5, 8, 5)
		  g1.DrawLine(0, 6, 8, 6)
		  g1.DrawLine(1, 7, 8, 7)
		  g1.DrawLine(2, 8, 8, 8)
		  g1.DrawLine(3, 9, 8, 9)
		  g1.DrawLine(4, 10, 8, 10)
		  g1.DrawLine(5, 11, 8, 11)
		  g1.DrawLine(6, 12, 8, 12)
		  
		  g1.ForeColor = colTin
		  g1.DrawLine(6, 1, 7, 1)
		  g1.DrawLine(5, 2, 7, 2)
		  g1.DrawLine(4, 3, 7, 3)
		  g1.DrawLine(3, 4, 7, 4)
		  g1.DrawLine(2, 5, 7, 5)
		  g1.DrawLine(1, 6, 7, 6)
		  g1.DrawLine(2, 7, 7, 7)
		  g1.DrawLine(3, 8, 7, 8)
		  g1.DrawLine(4, 9, 7, 9)
		  g1.DrawLine(5, 10, 7, 10)
		  g1.DrawLine(6, 11, 7, 11)
		  
		  dim t, l As Integer
		  t = (g.Height - 13) / 2
		  l = g.Width - 16
		  g.DrawPicture(p, l, t)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawRightArrow(g As Graphics, optional BackColor As Color = &cFFFFFF)
		  dim p As new Picture(9, 13, 32)
		  dim g1 As Graphics = p.Graphics
		  
		  g1.ForeColor = BackColor
		  g1.FillRect(0, 0, g1.Width, g1.Height)
		  
		  g1.ForeColor = colSilver
		  g1.DrawLine(0, 0, 2, 0)
		  g1.DrawLine(0, 1, 3, 1)
		  g1.DrawLine(0, 2, 4, 2)
		  g1.DrawLine(0, 3, 5, 3)
		  g1.DrawLine(0, 4, 6, 4)
		  g1.DrawLine(0, 5, 7, 5)
		  g1.DrawLine(0, 6, 8, 6)
		  g1.DrawLine(0, 7, 7, 7)
		  g1.DrawLine(0, 8, 6, 8)
		  g1.DrawLine(0, 9, 5, 9)
		  g1.DrawLine(0, 10, 4, 10)
		  g1.DrawLine(0, 11, 3, 11)
		  g1.DrawLine(0, 12, 2, 12)
		  
		  g1.ForeColor = colTin
		  g1.DrawLine(1, 1, 2, 1)
		  g1.DrawLine(1, 2, 3, 2)
		  g1.DrawLine(1, 3, 4, 3)
		  g1.DrawLine(1, 4, 5, 4)
		  g1.DrawLine(1, 5, 6, 5)
		  g1.DrawLine(1, 6, 7, 6)
		  g1.DrawLine(1, 7, 6, 7)
		  g1.DrawLine(1, 8, 5, 8)
		  g1.DrawLine(1, 9, 4, 9)
		  g1.DrawLine(1, 10, 3, 10)
		  g1.DrawLine(1, 11, 2, 11)
		  
		  dim t, l As Integer
		  t = (g.Height - 13) / 2
		  l = 7
		  g.DrawPicture(p, l, t)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableCell(row As Integer, column As Integer)
		  if row >= ListCount then exit sub
		  if row < 0 then exit sub
		  if column >= ColumnCount then exit sub
		  if column < 0 then exit sub
		  
		  try
		    CellsEnabled(row, column) = True
		  catch
		  end try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FormattedDate(dt As Date, Fmt As String) As String
		  ' Format Values to use.
		  ' Send as follows:
		  '
		  '      TDateControl.FormattedDate("yyyy-mmm-dd nn")
		  '
		  ' ----------------------------------------------------------------
		  ' Send      Result
		  ' ----------------------------------------------------------------
		  ' n            Mon, Tue, Wed, Thu, Fri, Sat, Sun
		  ' nn          Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
		  ' d            Day in short numeric (i.e. 3 is "3")
		  ' dd          Day in "00" numeric (i.e. 3 is "03")
		  ' ddd        Day with speech (i.e. 3 is 3rd, 1 is 1st, 18 is 18th)
		  ' m           Month in short numeric (i.e. 3 is "3")
		  ' mm        Month in "00" numeric (i.e. 3 is "03")
		  ' mmm     Jan, Feb, Mar ...
		  ' mmmm  January, February, March ...
		  ' yy          Two digit year (i.e. 2012 is "12")
		  ' yyyy       Four digit year (i.e. 2012 is "2012")
		  ' h            Hour in short format (i.e. 9 is "9")
		  ' hh          Hour in long format (i.e. 9 is "09")
		  ' tt            Minutes
		  ' ss           Seconds
		  ' ap           AM/PM indicator (i.e. "am" or "pm")
		  ' ----------------------------------------------------------------
		  
		  if UBound(LongMonths) < 11 then
		    SetupDaysMonths
		  end if
		  
		  dim ret As String
		  dim apind As boolean = False
		  
		  ret = Uppercase(Fmt)
		  
		  // Change Characters
		  ret = ReplaceAll(ret, "Y", "@")
		  ret = ReplaceAll(ret, "M", "£")
		  ret = ReplaceAll(ret, "D", "$")
		  ret = ReplaceAll(ret, "N", "%")
		  ret = ReplaceAll(ret, "H", "^")
		  ret = ReplaceAll(ret, "T", "&")
		  ret = ReplaceAll(ret, "S", "*")
		  ret = ReplaceAll(ret, "AP", "±")
		  
		  if Instr(ret, "±") > 0 then
		    apind = True
		  end if
		  
		  // Hour stuff
		  dim h1 As Integer = dt.Hour
		  
		  if h1 >= 12 then
		    ret = Replace(ret, "±", "pm")
		  else
		    ret = Replace(ret, "±", "am")
		  end if
		  
		  if apind then
		    if h1 > 12 then
		      h1 = h1 - 12
		    end if
		    if h1 = 0 then
		      h1 = 12
		    end if
		  end if
		  
		  if InStr(ret, "^^") > 0 then
		    ret = Replace(ret, "^^", Format(h1, "00"))
		  elseif InStr(ret, "^") > 0 then
		    ret = Replace(ret, "^", Format(h1, "##"))
		  end if
		  
		  // Minute stuff
		  if InStr(ret, "&&") > 0 then
		    ret = Replace(ret, "&&", Format(dt.Minute, "00"))
		  end if
		  
		  // Seconds stuff
		  if InStr(ret, "**") > 0 then
		    ret = Replace(ret, "**", Format(dt.Second, "00"))
		  end if
		  
		  // Year Stuff
		  if InStr(ret, "@@@@") > 0 then
		    ret = Replace(ret, "@@@@", Format(dt.Year, "####"))
		  elseif InStr(ret, "@@") > 0 then
		    ret = Replace(ret, "@@", Mid(Format(dt.Year, "####"), 3, 2))
		  end if
		  
		  // Month Stuff
		  if InStr(ret, "££££") > 0 then
		    ret = Replace(ret, "££££", LongMonths(dt.Month - 1))
		  elseif InStr(ret, "£££") > 0 then
		    ret = Replace(ret, "£££", ShortMonths(dt.Month - 1))
		  elseif InStr(ret, "££") > 0 then
		    ret = Replace(ret, "££", Format(dt.Month, "00"))
		  elseif InStr(ret, "£") > 0 then
		    ret = Replace(ret, "£", Str(dt.Month))
		  end if
		  
		  // Day Stuff
		  if InStr(ret, "$$$") > 0 then
		    dim s1 As String = Str(dt.Day)
		    if dt.Day >= 10 and dt.Day <= 13 then
		      s1 = s1 + "th"
		    else
		      select case Right(s1, 1)
		      case "1"
		        s1 = s1 + "st"
		      case "2"
		        s1 = s1 + "nd"
		      case "3"
		        s1 = s1 + "rd"
		      else
		        s1 = s1 + "th"
		      end select
		    end if
		    ret = Replace(ret, "$$$", s1)
		  elseif InStr(ret, "$$") > 0 then
		    ret = Replace(ret, "$$", Format(dt.Day, "00"))
		  elseif InStr(ret, "$") > 0 then
		    ret = Replace(ret, "$", Str(dt.Day))
		  end if
		  
		  if UBound(LongMonths) < 11 then
		    SetupDaysMonths
		  end if
		  
		  // Day String Stuff
		  if InStr(ret, "%%") > 0 then
		    ret = Replace(ret, "%%", LongDayStr(dt.DayOfWeek-1))
		  elseif InStr(ret, "%") > 0 then
		    ret = Replace(ret, "%", ShortDayStr(dt.DayOfWeek-1))
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FormattedTime(dt As Date, Fmt As String) As String
		  dim ret As String
		  dim showam as boolean = false
		  dim hr As integer
		  
		  ret = Uppercase(Fmt)
		  
		  if InStr(ret, "AMPM") > 0 then
		    showam = True
		    ret = Replace(ret, "AMPM", "")
		  elseif InStr(ret,"AM") > 0 then
		    showam = True
		    ret = Replace(ret, "AM", "")
		  elseif InStr(ret,"PM") > 0 then
		    showam = True
		    ret = Replace(ret, "PM", "")
		  elseif InStr(ret,"AP") > 0 then
		    showam = True
		    ret = Replace(ret, "AP", "")
		  elseif InStr(ret,"A/P") > 0 then
		    showam = True
		    ret = Replace(ret, "A/P", "")
		  elseif InStr(ret,"AM/PM") > 0 then
		    showam = True
		    ret = Replace(ret, "AM/PM", "")
		  end if
		  
		  ret = ReplaceAll(ret, "H", "@") ' Hours = @
		  ret = ReplaceAll(ret, "M", "£") ' Minutes = £
		  ret = ReplaceAll(ret, "S", "$") ' Seconds = $
		  
		  // Deal with Hours
		  hr = dt.Hour
		  
		  if showam then
		    if hr > 12 then
		      hr = hr - 12
		      ret = ret + "pm"
		    elseif hr > 11 then
		      ret = ret + "pm"
		    else
		      ret = ret + "am"
		    end if
		  end if
		  
		  if InStr(ret, "@@@") > 0 then
		    ret = Replace(ret, "@@@", Format(hr, "##00"))
		  elseif InStr(ret, "@@") > 0 then
		    ret = Replace(ret, "@@", Format(hr, "00"))
		  elseif InStr(ret, "@") > 0 then
		    ret = Replace(ret, "@", Format(hr, "#"))
		  end if
		  
		  // Deal with Minutes
		  if InStr(ret, "££") > 0 then
		    ret = Replace(ret, "££", Format(dt.Minute, "00"))
		  elseif InStr(ret, "£") > 0 then
		    ret = Replace(ret, "£", Format(dt.Minute, "#"))
		  end if
		  
		  // Deal with Seconds
		  if InStr(ret, "$$") > 0 then
		    ret = Replace(ret, "$$", Format(dt.Second, "00"))
		  elseif InStr(ret, "$") > 0 then
		    ret = Replace(ret, "$", Format(dt.Second, "#"))
		  end if
		  
		  return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValue(row As Integer, column As Integer) As Variant
		  dim ret As Variant
		  
		  select case ColType(column)
		    
		  case ctCheckBox
		    ret = Cell(row, column)
		    
		  else
		    ret = CellTag(row, column)
		    
		  end select
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function OppositeColor(Col As Color) As Color
		  ' ©Simon Berridge, 2012
		  ' This method calculates the logical opposite colour to the one sent.
		  
		  dim r, g, b As Integer
		  
		  r = 255 - Col.Red
		  g = 255 - Col.Green
		  b = 255 - Col.Blue
		  
		  Return RGB(r, g, b)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PopUpCellChoices(row As Integer, column As Integer, ChoiceList As String)
		  Dim choices() As String = Split(ChoiceList, ",")
		  Dim menu As New MenuItem
		  
		  for each choice As String in choices
		    if choice = "-" then
		      menu.Append New MenuItem( MenuItem.TextSeparator )
		    else
		      Dim item As New MenuItem( choice )
		      menu.Append item
		      if choice = Cell( row, column ) then item.Checked = true
		    end if
		  next
		  
		  Dim choice As MenuItem = menu.PopUp
		  
		  if choice is nil then exit sub
		  
		  Cell( row, column ) = choice.Text
		  CellTag(row, column) = choice.Text
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  ReDim ColType(-1)
		  ReDim DropOrient(-1)
		  ReDim DropList(-1, -1)
		  ReDim ColEdit(-1)
		  ReDim PBMaxVals(-1, -1)
		  
		  SetupDaysMonths
		  DeleteAllRows
		  SetInitialValue
		  SetColumnTypes
		  SetHiddenColumns
		  SetColumnOrientation
		  SetDefaultRowHeight
		  
		  ReDim CellsEnabled(-1, ColumnCount - 1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResizeColumns()
		  if NotOpen then exit sub
		  
		  dim mColumnWidth() as Integer
		  redim mColumnWidth(ColumnCount-1)
		  dim FitToWidth As Boolean = False
		  
		  dim pic as new Picture(20, 20, 32)
		  dim g as Graphics = pic.Graphics
		  g.TextFont = TextFont
		  g.TextSize = TextSize
		  g.Bold = Bold
		  g.Italic = Italic
		  g.Underline = Underline
		  
		  // First, get the max needed width of each Listbox column
		  for row as Integer = -1 to ListCount-1
		    for col as Integer = 0 to ColumnCount-1
		      if Column(col).WidthActual <> 0 then
		        dim cellText as String
		        dim w as Integer
		        if row < 0 then
		          cellText = Heading(col)
		        else
		          cellText = Cell(row, col)
		        end
		        select case ColType(col)
		        case ctProgressBar
		          w = 75
		        case ctCheckBox
		          w = g.StringWidth(cellText) + 29
		        case ctDropDown
		          w = g.StringWidth(cellText) + 32
		        else
		          w = g.StringWidth(cellText) + 14
		        end Select
		        if mColumnWidth(col) < w then
		          mColumnWidth(col) = w
		        end if
		      end if
		    next
		  next
		  
		  // calculate the total width
		  dim totalWidth as Integer
		  for each d as Integer in mColumnWidth
		    totalWidth = totalWidth + d
		  next
		  
		  if ScrollBarVertical then
		    totalWidth = totalWidth + 16
		  end if
		  
		  if totalWidth < Width then
		    FitToWidth = True
		  end if
		  
		  // Now adjust the width of each Listbox column
		  if FitToWidth then
		    dim cw, s As String
		    for col as Integer = 0 to ColumnCount-1
		      if Column(col).WidthActual <> 0 then
		        dim n as Integer
		        n = mColumnWidth(col)
		        if col = ColumnCount-1 then
		          s = "*" // last column
		        else
		          s = Format(n/totalWidth*100, "#")+"%,"
		        end
		      else
		        if col = ColumnCount-1 then
		          s = "0"
		        else
		          s = "0,"
		        end if
		      end if
		      cw = cw + s
		    next
		    ColumnWidths = cw
		  else
		    dim cw As String = ""
		    for each d as Integer in mColumnWidth
		      cw = cw + Format(d, "#") + ","
		    next
		    cw = Left(cw, Len(cw) - 1)
		    ColumnWidths = cw
		    ScrollBarHorizontal = True
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetColumnOrientation()
		  dim col() As String = Split(ColAlignment, ",")
		  
		  for lp as Integer = 0 to UBound(col)
		    col(lp) = Trim(Uppercase(col(lp)))
		  next
		  
		  dim sn As Integer = UBound(col)
		  for lp as Integer = sn DownTo 0
		    if col(lp) = "" then
		      col(lp) = "F"
		    end if
		  next
		  
		  if UBound(col) < ColumnCount - 1 then
		    for lp as integer = UBound(col) + 1 to ColumnCount - 1
		      col.Append "L"
		    next
		  end if
		  
		  while UBound(col) > ColumnCount - 1
		    col.Remove(UBound(col))
		  wend
		  
		  for lp as Integer = 0 to UBound(col)
		    if ColType(lp) = ctDropDown then
		      ColumnAlignment(lp) = Listbox.AlignCenter
		    else
		      select case Left(col(lp), 1)
		      case "F"
		        ColumnAlignment(lp) = Listbox.AlignDefault
		      case "D"
		        ColumnAlignment(lp) = Listbox.AlignDecimal
		        dim Num As Integer = Val(Right(col(lp), Len(col(lp)) - 1))
		        dim p As new Picture(10, 10, 32)
		        dim g As Graphics = p.Graphics
		        g.TextFont = TextFont
		        g.TextSize = TextSize
		        g.Bold = Bold
		        dim w as Integer = g.StringWidth("8")
		        ColumnAlignmentOffset(lp) = -(Num * w) - 4
		      case "L"
		        ColumnAlignment(lp) = Listbox.AlignLeft
		      case "R"
		        ColumnAlignment(lp) = Listbox.AlignRight
		      case "C"
		        ColumnAlignment(lp) = Listbox.AlignCenter
		      end Select
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetColumnTypes()
		  ColumnTypes = Uppercase(ColumnTypes)
		  dim ct() As String = Split(ColumnTypes, ",")
		  
		  if UBound(ct) < ColumnCount - 1 then
		    for lp as integer = UBound(ct) + 1 to ColumnCount - 1
		      ct.Append "S"
		    next
		  end if
		  
		  if UBound(ct) >= ColumnCount then
		    ReDim ct(ColumnCount - 1)
		  end if
		  
		  for lp as integer = 0 to UBound(ct)
		    ct(lp) = Trim(ct(lp))
		  next
		  
		  ReDim ColType(UBound(ct))
		  ReDim DropOrient(UBound(ct))
		  ReDim ColEdit(UBound(ct))
		  
		  for lp as integer = 0 to UBound(ct)
		    ColEdit(lp) = False
		    select case Left(ct(lp), 1)
		      
		    case "I"
		      ColType(lp) = ctInteger
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "S"
		      ColType(lp) = ctString
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "C"
		      ColType(lp) = ctCurrency
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "N"
		      ColType(lp) = ctNumber
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "D"
		      ColType(lp) = ctDropDown
		      if Right(ct(lp), 1) = "L" or Right(ct(lp), 1) = "D" then
		        DropOrient(lp) = "L"
		      else
		        DropOrient(lp) = "R"
		      end if
		      
		    case "B"
		      ColType(lp) = ctCheckBox
		      self.ColumnType(lp) = Listbox.TypeCheckbox
		      
		    case "T"
		      ColType(lp) = ctDate
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "M"
		      ColType(lp) = ctTime
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "A"
		      ColType(lp) = ctDateTime
		      if Right(ct(lp), 1) = "E" then
		        ColEdit(lp) = True
		      end if
		      
		    case "P"
		      ColType(lp) = ctProgressBar
		      
		    end Select
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetDefaultRowHeight()
		  if DefaultRowHeight <> -1 then exit sub
		  
		  dim p As new Picture(20, 20, 32)
		  p.Graphics.TextFont = TextFont
		  p.Graphics.TextSize = TextSize
		  p.Graphics.Bold = Bold
		  p.Graphics.Underline = Underline
		  p.Graphics.Italic = Italic
		  dim th As Integer = p.Graphics.TextHeight
		  
		  select case TableType
		  case 0
		    th = th + 6
		  case 1, 2
		    th = th + 12
		  end Select
		  
		  dim pb As Boolean = False
		  
		  for lp as integer = 0 to UBound(ColType)
		    if ColType(lp) = ctProgressBar then
		      pb = True
		    end if
		  next
		  
		  if pb then th = th + 4
		  
		  DefaultRowHeight = th
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDropDownList(row As Integer, column As Integer, List As String)
		  if UBound(DropList) < row then
		    ReDim DropList(row, ColumnCount)
		  end if
		  
		  DropList(row, column) = List
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetHiddenColumns()
		  dim hc() As String = Split(HideColumns, ",")
		  
		  if UBound(hc) = -1 then exit sub
		  
		  for lp as integer = 0 to UBound(hc)
		    dim cn As Integer = Val(Trim(hc(lp)))
		    Column(cn).WidthActual = 0
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetInitialValue()
		  InitialValue = ReplaceAll(InitialValue, ",", Chr(9))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPBMaxValue(row As Integer, column As Integer, MaxVal As Double)
		  if UBound(PBMaxVals) < row then
		    ReDim PBMaxVals(row, ColumnCount)
		  end if
		  
		  PBMaxVals(row, column) = MaxVal
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetupDaysMonths(optional Language As String = "E")
		  select case Language
		  case "E"
		    LongMonths = Array("January","February","March","April","May","June","July","August","September","October","November","December")
		    ShortMonths = Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
		    LongDayStr =Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
		    ShortDayStr =Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat")
		  case "S"
		    LongMonths = Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Augosto","Septiembre","Octubre","Noviembre","Diciembre")
		    ShortMonths = Array("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic")
		    LongDayStr =Array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado")
		    ShortDayStr =Array("Dom","Lun","Mar","Mie","Jue","Vie","Sab")
		  end Select
		  
		  if Months <> "" then
		    dim m() As String = Months.Split(",")
		    if m.Ubound = 11 then
		      LongMonths = m
		    end if
		  end if
		  
		  if MonthsShort <> "" then
		    dim m() As String = MonthsShort.Split(",")
		    if m.Ubound = 11 then
		      ShortMonths = m
		    end if
		  end if
		  
		  if CalDays <> "" then
		    dim m() As String = CalDays.Split(",")
		    if m.Ubound = 6 then
		      LongDayStr = m
		      ReDim ShortDayStr(6)
		      for lp as Integer = 0 to 6
		        LongDayStr(lp) = Uppercase(LongDayStr(lp).Left(1)) + LongDayStr(lp).Right(LongDayStr(lp).Len - 1)
		        ShortDayStr(lp) = LongDayStr(lp).Left(3)
		      next
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValue(column As Integer, Value As Variant)
		  select case ColType(column)
		    
		  case ctCheckBox
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Value
		    
		  case ctCurrency
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Format(Value, CurrencyFormat)
		    
		  case ctDate
		    CellTag(LastIndex, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(LastIndex, column) = FormattedDate(dt, DateFormat)
		    
		  case ctTime
		    CellTag(LastIndex, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(LastIndex, column) = FormattedTime(dt, TimeFormat)
		    
		  case ctDateTime
		    CellTag(LastIndex, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(LastIndex, column) = FormattedDate(dt, DateTimeFormat)
		    
		  case ctDropDown
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Value
		    
		  case ctInteger
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Format(Value, IntegerFormat)
		    
		  case ctNumber
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Format(Value, NumberFormat)
		    
		  case ctString
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = Value
		    
		  case ctProgressBar
		    CellTag(LastIndex, column) = Value
		    Cell(LastIndex, column) = "P"
		    
		  end Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateValue(row As Integer, column As Integer, Value As Variant)
		  select case ColType(column)
		    
		  case ctCheckBox
		    CellTag(row, column) = Value
		    Cell(row, column) = Value
		    
		  case ctCurrency
		    CellTag(row, column) = Value
		    Cell(row, column) = Format(Value, CurrencyFormat)
		    
		  case ctDate
		    CellTag(row, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(row, column) = FormattedDate(dt, DateFormat)
		    
		  case ctDateTime
		    CellTag(row, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(row, column) = FormattedDate(dt, DateTimeFormat)
		    
		  case ctTime
		    CellTag(row, column) = Value
		    dim dt As new date
		    dt.TotalSeconds = Value
		    Cell(LastIndex, column) = FormattedTime(dt, TimeFormat)
		    
		  case ctDropDown
		    CellTag(row, column) = Value
		    Cell(row, column) = Value
		    
		  case ctInteger
		    CellTag(row, column) = Value
		    Cell(row, column) = Format(Value, IntegerFormat)
		    
		  case ctNumber
		    CellTag(row, column) = Value
		    Cell(row, column) = Format(Value, NumberFormat)
		    
		  case ctString
		    CellTag(row, column) = Value
		    Cell(row, column) = Value
		    
		  case ctProgressBar
		    CellTag(row, column) = Value
		    Cell(row, column) = "P"
		    
		  end Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WriteString(g As Graphics, Str As String, Optional Alignment As Integer = 0)
		  dim xPos As Integer
		  dim yPos As Integer = ((g.Height - g.TextHeight) / 2) + g.TextAscent + 1
		  dim DrawWidth As Integer = g.Width
		  
		  select case Alignment
		  case posLeft
		    if TableType = 1 or TableType = 2 then
		      xPos = 3
		    else
		      xPos = 0
		    end if
		    
		  case posCenter
		    xPos = (g.Width - g.StringWidth(Str)) / 2
		    
		    if xPos < 3 then
		      xPos = 3
		    end if
		    
		  case posRight
		    if TableType = 1 or TableType = 2 then
		      xPos = g.Width - g.StringWidth(Str) - 4
		    else
		      xPos = g.Width - g.StringWidth(Str) - 2
		    end if
		    
		    if xPos < 3 then
		      xPos = 3
		    end if
		    
		  end Select
		  
		  g.DrawString(Str, xPos, yPos, DrawWidth, true)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CellCheckBoxStateChange(row As Integer, column As Integer, newState As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellCurrencyChanged(newVal As Currency, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellDateChanged(newDate As Date, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellDateTimeChanged(newDate As Date, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellDropDownChanged(row As Integer, column As Integer, newValue As String, oldValue As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellIntegerChanged(newVal As Integer, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellNumberChanged(newVal As Double, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellTextChanged(newText As String, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellTimeChanged(newTime As Date, row As Integer, column As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DoubleClick(row As Integer, column As integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		AlternateColor As Color = &cFFFFFF
	#tag EndProperty

	#tag Property, Flags = &h0
		BackColor As Color = &cFFFFFF
	#tag EndProperty

	#tag Property, Flags = &h0
		BoxColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		CalDays As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CellsEnabled(-1,-1) As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ColAlignment As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ColEdit() As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ColType() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			This is a comma separated list of column types. The values are:
			
			I - Integer
			S - String
			C - Currency
			N - Number
			Dx - Drop Down. 'x' is L or R for Left or Right side of the cell. The default is Left.
			B - Check Box
			T - Date
			M - Time
			A - DateTime
			P - Progress Bar
			
			If the column can be edited then use the column value plus the letter 'E'
			
			IE - Integer column, can be edited
			CE - Currency column, can be edited
			
			Column types that DO NOT take the E extension:
			Dx - Drop Down. 'x' is L or R for Left or Right side of the cell. The default is Left.
			B - Check Box
			P - Progress Bar
			
			These are editable by default.
			
		#tag EndNote
		ColumnTypes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrencyFormat As String = "#,0.00;(#,0.00);\"
	#tag EndProperty

	#tag Property, Flags = &h0
		DateFormat As String = "dd-mm-yyyy"
	#tag EndProperty

	#tag Property, Flags = &h0
		DateTimeFormat As String = "dd-mm-yy hh:tt ap"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DropList(-1,-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DropOrient() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HideColumns As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HighlightColor As Color = &cFF0000
	#tag EndProperty

	#tag Property, Flags = &h0
		IntegerFormat As String = "-#"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LongDayStr(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LongMonths(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Months As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MonthsShort As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NotOpen As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberFormat As String = "-#0.00"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PBMaxVals(-1,-1) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ProgBarColor As Color = &cFF0000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ShortDayStr(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ShortMonths(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TableType As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeFormat As String = "HH:MMap"
	#tag EndProperty


	#tag Constant, Name = colSilver, Type = Color, Dynamic = False, Default = \"&cCCCCCC", Scope = Public
	#tag EndConstant

	#tag Constant, Name = colTin, Type = Color, Dynamic = False, Default = \"&c7F7F7F", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ctCheckBox, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctCurrency, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctDate, Type = Double, Dynamic = False, Default = \"3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctDateTime, Type = Double, Dynamic = False, Default = \"4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctDropDown, Type = Double, Dynamic = False, Default = \"5", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctInteger, Type = Double, Dynamic = False, Default = \"6", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctNumber, Type = Double, Dynamic = False, Default = \"7", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctProgressBar, Type = Double, Dynamic = False, Default = \"8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctString, Type = Double, Dynamic = False, Default = \"9", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ctTime, Type = Double, Dynamic = False, Default = \"10", Scope = Private
	#tag EndConstant

	#tag Constant, Name = posCenter, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = posLeft, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = posRight, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ShowDropIndicator"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
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
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
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
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
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
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeading"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollBarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontal"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVertical"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollOffset"
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hierarchical"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDragReorder"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnsResizable"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TableType"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - RoundedBox"
				"2 - SquareBox"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternateColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFF0000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoxColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProgBarColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFF0000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HideColumns"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnTypes"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColAlignment"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Months"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MonthsShort"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CalDays"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Font"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DateFormat"
			Visible=true
			Group="Formats"
			InitialValue="dd-mm-yyyy"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeFormat"
			Visible=true
			Group="Formats"
			InitialValue="HH:MMap"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DateTimeFormat"
			Visible=true
			Group="Formats"
			InitialValue="dd-mm-yy hh:tt ap"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerFormat"
			Visible=true
			Group="Formats"
			InitialValue="-#"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyFormat"
			Visible=true
			Group="Formats"
			InitialValue="#,0.00;(#,0.00);\\"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberFormat"
			Visible=true
			Group="Formats"
			InitialValue="-#0.00"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
