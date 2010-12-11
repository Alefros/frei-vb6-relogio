VERSION 5.00
Object = "{90F3D7B3-92E7-44BA-B444-6A8E2A3BC375}#1.0#0"; "actskin4.ocx"
Begin VB.Form Form1 
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "@alleph_"
   ClientHeight    =   1980
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   6645
   Icon            =   "frm_relo.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1980
   ScaleWidth      =   6645
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   0
      ScaleHeight     =   1995
      ScaleWidth      =   6675
      TabIndex        =   0
      Top             =   0
      Width           =   6735
      Begin VB.Timer Timer1 
         Interval        =   100
         Left            =   1800
         Top             =   480
      End
      Begin ACTIVESKINLibCtl.Skin Skin1 
         Left            =   1800
         OleObjectBlob   =   "frm_relo.frx":030A
         Top             =   480
      End
      Begin VB.Label lbl_time 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "Digital-7"
            Size            =   99.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   1695
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   6375
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
            Skin1.LoadSkin App.Path & "\Diversos\SimileGreen.skn"
            Skin1.ApplySkin Me.hWnd
End Sub

Private Sub Timer1_Timer()
lbl_time = Time
End Sub
