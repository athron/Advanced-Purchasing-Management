Public Class frmMain : Inherits System.Windows.Forms.Form
    Friend WithEvents Cb As AxXtremeCommandBars.AxCommandBars

    Private Sub frmMain_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        Dim CommandBarsGlobalSettings As New XtremeCommandBars.CommandBarsGlobalSettings
        CommandBarsGlobalSettings.ResourceImages.LoadFromFile(Application.StartupPath & "\VisualStudio2012.dll", "VisualStudio2012Dark.ini")
        InitializeComponent()

        With Cb

            For Each Control In Me.Controls
                If TypeOf Control Is MdiClient Then
                    .SetMDIClient(Control.Handle.ToInt32())
                End If
            Next
            .AllowFrameTransparency(False)
            .EnableOffice2007Frame(True)
            .VisualTheme = XtremeCommandBars.XTPVisualTheme.xtpThemeVisualStudio2012Dark
            With .StatusBar
                .Visible = True
            End With
        End With

        MenuGen()
    End Sub
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmMain))
        Me.Cb = New AxXtremeCommandBars.AxCommandBars()
        CType(Me.Cb, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Cb
        '
        Me.Cb.Enabled = True
        Me.Cb.Location = New System.Drawing.Point(12, 12)
        Me.Cb.Name = "Cb"
        Me.Cb.OcxState = CType(resources.GetObject("Cb.OcxState"), System.Windows.Forms.AxHost.State)
        Me.Cb.Size = New System.Drawing.Size(24, 24)
        Me.Cb.TabIndex = 0
        '
        'frmMain
        '
        Me.ClientSize = New System.Drawing.Size(284, 262)
        Me.Controls.Add(Me.Cb)
        Me.IsMdiContainer = True
        Me.Name = "frmMain"
        CType(Me.Cb, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Sub MenuGen()
        With Cb
            With .ActiveMenuBar
                .ShowGripper = False
                With .CommandBars
                    .SetAllCaps(True)
                    With .PaintManager

                    End With
                End With

                With .Controls
                    With .Add(XtremeCommandBars.XTPControlType.xtpControlButtonPopup, 701, "File")
                        .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 702, "Logout").BeginGroup = True
                        .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 702, "Exit")
                    End With

                    With .Add(XtremeCommandBars.XTPControlType.xtpControlButtonPopup, 702, "Purchasing")
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Requirements")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Orders")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Receives")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Returns")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Usages")

                        End With
                    End With

                    With .Add(XtremeCommandBars.XTPControlType.xtpControlButtonPopup, 703, "Data")
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Users")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Items")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Suppliers")

                        End With
                    End With
                    With .Add(XtremeCommandBars.XTPControlType.xtpControlButtonPopup, 704, "Laporan")
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Realisasi")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Persediaan")

                        End With
                    End With

                    With .Add(XtremeCommandBars.XTPControlType.xtpControlButtonPopup, 704, "Pengaturan")
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Database")

                        End With
                        With .CommandBar.Controls.Add(XtremeCommandBars.XTPControlType.xtpControlButton, 701, "Sandi")

                        End With

                    End With
                End With
            End With
        End With

    End Sub
End Class