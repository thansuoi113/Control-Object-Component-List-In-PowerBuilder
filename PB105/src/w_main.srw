$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cbx_visible from checkbox within w_main
end type
type sle_control from singlelineedit within w_main
end type
type cbx_enabled from checkbox within w_main
end type
type rb_1 from radiobutton within w_main
end type
type cbx_1 from checkbox within w_main
end type
type lb_1 from listbox within w_main
end type
type sle_1 from singlelineedit within w_main
end type
type pb_1 from picturebutton within w_main
end type
type st_1 from statictext within w_main
end type
type cb_control from commandbutton within w_main
end type
type dw_objects from datawindow within w_main
end type
type gb_1 from groupbox within w_main
end type
end forward

global type w_main from window
integer width = 2752
integer height = 1676
boolean titlebar = true
string title = "Control Object Component List"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cbx_visible cbx_visible
sle_control sle_control
cbx_enabled cbx_enabled
rb_1 rb_1
cbx_1 cbx_1
lb_1 lb_1
sle_1 sle_1
pb_1 pb_1
st_1 st_1
cb_control cb_control
dw_objects dw_objects
gb_1 gb_1
end type
global w_main w_main

on w_main.create
this.cbx_visible=create cbx_visible
this.sle_control=create sle_control
this.cbx_enabled=create cbx_enabled
this.rb_1=create rb_1
this.cbx_1=create cbx_1
this.lb_1=create lb_1
this.sle_1=create sle_1
this.pb_1=create pb_1
this.st_1=create st_1
this.cb_control=create cb_control
this.dw_objects=create dw_objects
this.gb_1=create gb_1
this.Control[]={this.cbx_visible,&
this.sle_control,&
this.cbx_enabled,&
this.rb_1,&
this.cbx_1,&
this.lb_1,&
this.sle_1,&
this.pb_1,&
this.st_1,&
this.cb_control,&
this.dw_objects,&
this.gb_1}
end on

on w_main.destroy
destroy(this.cbx_visible)
destroy(this.sle_control)
destroy(this.cbx_enabled)
destroy(this.rb_1)
destroy(this.cbx_1)
destroy(this.lb_1)
destroy(this.sle_1)
destroy(this.pb_1)
destroy(this.st_1)
destroy(this.cb_control)
destroy(this.dw_objects)
destroy(this.gb_1)
end on

type cbx_visible from checkbox within w_main
integer x = 2304
integer y = 320
integer width = 293
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Visible"
boolean checked = true
end type

event clicked;
Int i
Int j
String ls_class

CommandButton	lcb_button
DataWindow		ld_dw
StaticText		lst_text
Tab				ltab_tab
GroupBox			lgb_name
CheckBox			lcbx_name
RadioButton		lrb_name
DropDownListBox lddlb_dropdownlistbox
SingleLineEdit	lsle_sle
MultiLineEdit		lmle_mle
picturebutton lpb_name

ls_class = sle_control.Text

If IsNull(ls_class) Or Len(Trim(ls_class)) = 0 Then Return

j = UpperBound(Parent.Control)
For i = 1 To j
	If Parent.Control[i].ClassName() = ls_class Then
		Choose Case Parent.Control[i].TypeOf()
			Case Animation!
			Case Line!
			Case RadioButton!
				lrb_name = Parent.Control[i]
				lrb_name.Visible = This.Checked
			Case CheckBox!
				lcbx_name = Parent.Control[i]
				lcbx_name.Visible = This.Checked
			Case ListBox!
			Case Rectangle!
			Case CommandButton!
				lcb_button = Parent.Control[i]
				lcb_button.Visible = This.Checked
			Case ListView!
			Case RichTextEdit!
			Case DataWindow!
				ld_dw = Parent.Control[i]
				ld_dw.Visible = This.Checked
			Case MonthCalendar!
			Case RoundRectangle!
			Case DropDownListBox!
			Case MultiLineEdit!
				lmle_mle = Parent.Control[i]
				lmle_mle.Visible = This.Checked
			Case SingleLineEdit!
				lsle_sle = Parent.Control[i]
				lsle_sle.Visible = This.Checked
			Case DropDownPictureListBox!
			Case OLEControl!
			Case StaticHyperLink!
			Case EditMask!
			Case OLECustomControl!
			Case StaticText!
				lst_text = Parent.Control[i]
				lst_text.Visible = This.Checked
			Case Graph!
			Case Oval!
			Case Tab!
			Case GroupBox!
				lgb_name = Parent.Control[i]
				lgb_name.Visible = This.Checked
			Case Picture!
			Case TreeView!
			Case HProgressBar!
			Case picturebutton!
				lpb_name = Parent.Control[i]
				lpb_name.Visible = This.Checked
			Case VProgressBar!
			Case HScrollBar!
			Case PictureHyperLink!
			Case VScrollBar!
			Case HTrackBar!
			Case PictureListBox!
			Case VTrackBar!
			Case Else
		End Choose
		Exit
	End If
Next

end event

type sle_control from singlelineedit within w_main
integer x = 1975
integer y = 224
integer width = 585
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "pb_1"
textcase textcase = lower!
borderstyle borderstyle = stylelowered!
end type

type cbx_enabled from checkbox within w_main
integer x = 1975
integer y = 320
integer width = 293
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Enabled"
boolean checked = true
end type

event clicked;
Int i
Int j
String ls_class

CommandButton	lcb_button
DataWindow		ld_dw
StaticText		lst_text
Tab				ltab_tab
GroupBox			lgb_name
CheckBox			lcbx_name
RadioButton		lrb_name
DropDownListBox lddlb_dropdownlistbox
SingleLineEdit	lsle_sle
MultiLineEdit		lmle_mle
picturebutton lpb_name

ls_class = sle_control.Text

If IsNull(ls_class) Or Len(Trim(ls_class)) = 0 Then Return

j = UpperBound(Parent.Control)
For i = 1 To j
	If Parent.Control[i].ClassName() = ls_class Then
		Choose Case Parent.Control[i].TypeOf()
			Case Animation!
			Case Line!
			Case RadioButton!
				lrb_name = Parent.Control[i]
				lrb_name.Enabled = This.Checked
			Case CheckBox!
				lcbx_name = Parent.Control[i]
				lcbx_name.Enabled = This.Checked
			Case ListBox!
			Case Rectangle!
			Case CommandButton!
				lcb_button = Parent.Control[i]
				lcb_button.Enabled = This.Checked
			Case ListView!
			Case RichTextEdit!
			Case DataWindow!
				ld_dw = Parent.Control[i]
				ld_dw.Enabled = This.Checked
			Case MonthCalendar!
			Case RoundRectangle!
			Case DropDownListBox!
			Case MultiLineEdit!
				lmle_mle = Parent.Control[i]
				lmle_mle.Enabled = This.Checked
			Case SingleLineEdit!
				lsle_sle = Parent.Control[i]
				lsle_sle.Enabled = This.Checked
			Case DropDownPictureListBox!
			Case OLEControl!
			Case StaticHyperLink!
			Case EditMask!
			Case OLECustomControl!
			Case StaticText!
				lst_text = Parent.Control[i]
				lst_text.Enabled = This.Checked
			Case Graph!
			Case Oval!
			Case Tab!
			Case GroupBox!
				lgb_name = Parent.Control[i]
				lgb_name.Enabled = This.Checked
			Case Picture!
			Case TreeView!
			Case HProgressBar!
			Case picturebutton!
				lpb_name = Parent.Control[i]
				lpb_name.Enabled = This.Checked
			Case VProgressBar!
			Case HScrollBar!
			Case PictureHyperLink!
			Case VScrollBar!
			Case HTrackBar!
			Case PictureListBox!
			Case VTrackBar!
			Case Else
		End Choose
		Exit
	End If
Next

end event

type rb_1 from radiobutton within w_main
integer x = 1134
integer y = 96
integer width = 293
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
end type

type cbx_1 from checkbox within w_main
integer x = 1134
integer y = 192
integer width = 329
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "check"
end type

type lb_1 from listbox within w_main
integer x = 549
integer y = 192
integer width = 475
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_main
integer x = 439
integer y = 32
integer width = 512
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "singleline test"
borderstyle borderstyle = stylelowered!
end type

type pb_1 from picturebutton within w_main
integer x = 110
integer y = 192
integer width = 402
integer height = 224
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "aaaaaaa"
boolean originalsize = true
alignment htextalign = left!
end type

type st_1 from statictext within w_main
integer x = 146
integer y = 64
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "static text"
boolean focusrectangle = false
end type

type cb_control from commandbutton within w_main
integer x = 2231
integer y = 32
integer width = 329
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Control"
end type

event clicked;Int i
Int li_cnt, li_row
String ls_type, ls_classname, ls_obj_name, ls_Text

CommandButton	lcb_button
DataWindow		ld_dw
StaticText		lst_text
Tab				ltab_tab
GroupBox			lgb_name
CheckBox			lcbx_name
RadioButton		lrb_name
DropDownListBox lddlb_dropdownlistbox
SingleLineEdit	lsle_sle
MultiLineEdit		lmle_mle
picturebutton lpb_name

li_cnt = UpperBound(Parent.Control)
For i = 1 To  li_cnt
	ls_Text = ""
	ls_type = ""
	Choose Case Parent.Control[i].TypeOf()
		Case Animation!
			ls_type = "Animation"
		Case Line!
			ls_type = "Line"
		Case RadioButton!
			ls_type = "RadioButton"
			lrb_name = Parent.Control[i]
			ls_Text = lrb_name.text
		Case CheckBox!
			ls_type = "CheckBox"
			lcbx_name = Parent.Control[i]
			ls_Text = lcbx_name.text
		Case ListBox!
			ls_type = "ListBox"
		Case Rectangle!
			ls_type = "Rectangle"
		Case Commandbutton!
			ls_type = "CommandButton"
			lcb_button = Parent.Control[i]
			ls_Text = lcb_button.text
		Case ListView!
			ls_type = "ListView"
		Case RichTextEdit!
			ls_type = "RichTextEdit"
		Case DataWindow!
			ls_type = "DataWindow"
			ld_dw = Parent.Control[i]
			ls_Text = ld_dw.title
		Case MonthCalendar!
			ls_type = "MonthCalendar"
		Case RoundRectangle!
			ls_type = "RoundRectangle"
		Case DropDownListBox!
			ls_type = "DropDownListBox"
		Case MultiLineEdit!
			ls_type = "MultiLineEdit"
			lmle_mle = Parent.Control[i]
			ls_Text = lmle_mle.text
		Case SingleLineEdit!
			ls_type = "SingleLineEdit"
			lsle_sle = Parent.Control[i]
			ls_Text = lsle_sle.text
		Case DropDownPictureListBox!
			ls_type = "DropDownPictureListBox"
		Case OLEControl!
			ls_type = "OLEControl"
		Case StaticHyperLink!
			ls_type = "StaticHyperLink"
		Case EditMask!
			ls_type = "EditMask"
		Case OLECustomControl!
			ls_type = "OLECustomControl"
		Case StaticText!
			ls_type = "StaticText"
			lst_text = Parent.Control[i]
			ls_Text = lst_text.text
		Case Graph!
			ls_type = "Graph"
		Case Oval!
			ls_type = "Oval"
		Case Tab!
			ls_type = "Tab"
		Case GroupBox!
			ls_type = "GroupBox"
			lgb_name = Parent.Control[i]
			ls_Text = lgb_name.text
		Case Picture!
			ls_type = "Picture"
		Case TreeView!
			ls_type = "TreeView"
		Case HProgressBar!
			ls_type = "HProgressBar"
		Case PictureButton!
			ls_type = "PictureButton"
			lpb_name = Parent.Control[i]
			ls_Text = lpb_name.text
		Case VProgressBar!
			ls_type = "VProgressBar"
		Case HScrollBar!
			ls_type = "HScrollBar"
		Case PictureHyperLink!
			ls_type = "PictureHyperLink"
		Case VScrollBar!
			ls_type = "VScrollBar"
		Case HTrackBar!
			ls_type = "HTrackBar"
		Case PictureListBox!
			ls_type = "PictureListBox"
		Case VTrackBar!
			ls_type = "VTrackBar"
		Case Else
			ls_type = "Unkown"
	End Choose
	
	li_row = dw_objects.InsertRow(0)
	dw_objects.SetItem(li_row, "as_class", Parent.Control[i].ClassName() )
	dw_objects.SetItem(li_row, "as_type",ls_type )
	dw_objects.SetItem(li_row, "as_text",ls_Text )
	
Next



end event

type dw_objects from datawindow within w_main
integer x = 37
integer y = 480
integer width = 2633
integer height = 992
integer taborder = 10
string title = "none"
string dataobject = "d_objects"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_main
integer x = 1061
integer width = 480
integer height = 400
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "test group"
end type

