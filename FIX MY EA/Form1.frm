VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Fix My EA :D"
   ClientHeight    =   5070
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6375
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5070
   ScaleWidth      =   6375
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.Timer Timer1 
      Left            =   5640
      Top             =   360
   End
   Begin VB.CommandButton Command3 
      Caption         =   "�j������EA"
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   3960
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�Ұ�EA"
      Height          =   495
      Left            =   720
      TabIndex        =   3
      Top             =   3240
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�ߧY�״_"
      Height          =   615
      Left            =   720
      TabIndex        =   2
      Top             =   2400
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "���gEA���\"
      Height          =   255
      Left            =   5400
      TabIndex        =   6
      Top             =   4800
      Width           =   975
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  '��u�T�w
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   11.25
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   3360
      TabIndex        =   5
      Top             =   2400
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "²���� �ݤU���M�~���Хh�x���ʶR"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   1200
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "---EA�״_��---"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   36
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   4935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim server As String
Dim oldw As Integer
Dim oldh As Integer
Private Sub Delay(ByVal milliseconds As Long)
    Sleep milliseconds
End Sub

Private Sub Command1_Click()
Shell "cmd /c taskkill /pid EADesktop.exe /f"
Shell "cmd /c taskkill /pid EADesktop.exe /f"
Delay 2000
Dim cmd As String
cmd = "cmd /c start """" ""C:\ProgramData\Microsoft\Windows\Start Menu\Programs\EA\EA.lnk"""
Shell cmd, vbNormalFocus
MsgBox "���\�״_EA"
server = server + "���\�״_EA | "
End Sub

Private Sub Command2_Click()
Dim cmd As String
cmd = "cmd /c start """" ""C:\ProgramData\Microsoft\Windows\Start Menu\Programs\EA\EA.lnk"""
Shell cmd, vbNormalFocus
MsgBox "���\�Ұ�EA"
server = server + "���\�Ұ�EA | "
End Sub

Private Sub Command3_Click()
Shell "cmd /c taskkill /pid EADesktop.exe /f"
Shell "cmd /c taskkill /pid EADesktop.exe /f"
Delay 2000
MsgBox "���\����EA"
server = server + "���\����EA | "
Label3.Caption = server
End Sub

Private Sub Form_Load()
oldw = Form1.Width
oldh = Form1.Height
Timer1.Enabled = True
Timer1.Interval = 1
End Sub

Private Sub Timer1_Timer()
If Form1.WindowState = 2 Then
Form1.WindowState = 0
MsgBox "�T���j!", vbCritical
End If
If Form1.WindowState = 0 Then
Form1.Width = oldw
Form1.Height = oldh
Label3.Caption = server
End If
End Sub
