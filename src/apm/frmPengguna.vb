Public Class frmPengguna

    Private Sub PenggunaBindingNavigatorSaveItem_Click(sender As System.Object, e As System.EventArgs) Handles PenggunaBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.PenggunaBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.PurchasingDataSet)

    End Sub

    Private Sub Form1_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'PurchasingDataSet.pengguna' table. You can move, or remove it, as needed.
        Me.PenggunaTableAdapter.Fill(Me.PurchasingDataSet.pengguna)

    End Sub
End Class