VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   645
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4980
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   645
   ScaleWidth      =   4980
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   120
      Top             =   600
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetTickCount& Lib "kernel32" ()
Private Sub Timer1_Timer()
    Dim Secs, Mins, Hours, Days
    Dim TotalMins, TotalHours, TotalSecs, TempSecs
    Dim CaptionText
    TotalSecs = Int(GetTickCount / 1000)
    Days = Int(((TotalSecs / 60) / 60) / 24)
    TempSecs = Int(Days * 86400)
    TotalSecs = TotalSecs - TempSecs
    TotalHours = Int((TotalSecs / 60) / 60)
    TempSecs = Int(TotalHours * 3600)
    TotalSecs = TotalSecs - TempSecs
    TotalMins = Int(TotalSecs / 60)
    TempSecs = Int(TotalMins * 60)
    TotalSecs = (TotalSecs - TempSecs)
    If TotalHours > 23 Then
        Hours = (TotalHours - 23)
    Else
        Hours = TotalHours
    End If


    If TotalMins > 59 Then
        Mins = (TotalMins - (Hours * 60))
    Else
        Mins = TotalMins
    End If
    CaptionText = Days & " Days, " & Hours & " Hours, " & Mins & " Minutes, " & TotalSecs & " seconds" & vbCrLf
    Label1.Caption = CaptionText
End Sub



