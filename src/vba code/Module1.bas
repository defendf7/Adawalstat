Attribute VB_Name = "Module1"
Sub walinfotx()
Attribute walinfotx.VB_ProcData.VB_Invoke_Func = "w\n14"
    
    
Dim txt As String, cnvtxt As String, i As Long, rng As Range
Dim txgdata1 As String
Dim txgdata2 As String
Dim txgdata3 As String
Dim txgdata4 As String
Dim txproc1 As String
''Dim txproc2 As String


txheader = "#!/bin/bash"
txgdata1 = Range("H21").Value
txgdata2 = Range("H22").Value
txgdata3 = Range("H23").Value
txgdata4 = Range("H24").Value

txdata1 = "telegram_chat_id="
txdata2 = "telegram_name="
txdata3 = "user_adastake="
txdata4 = "user_adavalue="
txproc1 = Range("H25").Value
''txproc2 = Range("H26").Value

txt = txt & txheader & vbNewLine
txt = txt & vbNewLine
txt = txt & txgdata1 & vbNewLine
txt = txt & txgdata2 & vbNewLine
txt = txt & txgdata3 & vbNewLine
txt = txt & txgdata4 & vbNewLine
txt = txt & vbNewLine
txt = txt & vbNewLine

'' Set rng = Range("a1:b100") or depending on your preferred range
For Each cell In Worksheets("awalstat").Range("b1:e8")
    With WorksheetFunction
''        cnvtxt = CStr(cell.Value)
        If (cell.Column = 2) Then
            txt = txt & txdata1
        ElseIf (cell.Column = 3) Then
            txt = txt & txdata2
        ElseIf (cell.Column = 4) Then
             txt = txt & txdata3
        ElseIf (cell.Column = 5) Then
             txt = txt & txdata4
        End If
''        txt = txt & CStr(cell.Text) & vbCrLf
        txt = txt & CStr(cell.Text) & vbNewLine
        If (cell.Column = 5) Then
            txt = txt & vbNewLine
            txt = txt & txproc1 & vbNewLine
            txt = txt & vbNewLine
            txt = txt & vbNewLine
        End If
    
    End With
Next
Open ThisWorkbook.Path & "\walreport.sh" For Output As #1
    Print #1, Mid$(txt, 1)
Close #1
    
    
End Sub


