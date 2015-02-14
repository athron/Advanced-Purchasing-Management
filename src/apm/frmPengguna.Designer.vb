<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmPengguna
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmPengguna))
        Me.PurchasingDataSet = New apm.purchasingDataSet()
        Me.PenggunaBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.PenggunaTableAdapter = New apm.purchasingDataSetTableAdapters.penggunaTableAdapter()
        Me.TableAdapterManager = New apm.purchasingDataSetTableAdapters.TableAdapterManager()
        Me.PenggunaBindingNavigator = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.BindingNavigatorMoveFirstItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorMovePreviousItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorSeparator = New System.Windows.Forms.ToolStripSeparator()
        Me.BindingNavigatorPositionItem = New System.Windows.Forms.ToolStripTextBox()
        Me.BindingNavigatorCountItem = New System.Windows.Forms.ToolStripLabel()
        Me.BindingNavigatorSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.BindingNavigatorMoveNextItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorMoveLastItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.BindingNavigatorAddNewItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorDeleteItem = New System.Windows.Forms.ToolStripButton()
        Me.PenggunaBindingNavigatorSaveItem = New System.Windows.Forms.ToolStripButton()
        Me.PenggunaDataGridView = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn4 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn5 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        CType(Me.PurchasingDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PenggunaBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PenggunaBindingNavigator, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.PenggunaBindingNavigator.SuspendLayout()
        CType(Me.PenggunaDataGridView, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PurchasingDataSet
        '
        Me.PurchasingDataSet.DataSetName = "purchasingDataSet"
        Me.PurchasingDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'PenggunaBindingSource
        '
        Me.PenggunaBindingSource.DataMember = "pengguna"
        Me.PenggunaBindingSource.DataSource = Me.PurchasingDataSet
        '
        'PenggunaTableAdapter
        '
        Me.PenggunaTableAdapter.ClearBeforeFill = True
        '
        'TableAdapterManager
        '
        Me.TableAdapterManager.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager.item_bufferTableAdapter = Nothing
        Me.TableAdapterManager.item_hargaTableAdapter = Nothing
        Me.TableAdapterManager.item_jenisTableAdapter = Nothing
        Me.TableAdapterManager.item_unitTableAdapter = Nothing
        Me.TableAdapterManager.itemTableAdapter = Nothing
        Me.TableAdapterManager.order_itemTableAdapter = Nothing
        Me.TableAdapterManager.orderTableAdapter = Nothing
        Me.TableAdapterManager.pengguna_jenisTableAdapter = Nothing
        Me.TableAdapterManager.penggunaTableAdapter = Me.PenggunaTableAdapter
        Me.TableAdapterManager.receive_item_surat_jalanTableAdapter = Nothing
        Me.TableAdapterManager.receive_itemTableAdapter = Nothing
        Me.TableAdapterManager.receiveTableAdapter = Nothing
        Me.TableAdapterManager.requirement_itemTableAdapter = Nothing
        Me.TableAdapterManager.requirementTableAdapter = Nothing
        Me.TableAdapterManager.return_itemTableAdapter = Nothing
        Me.TableAdapterManager.returnTableAdapter = Nothing
        Me.TableAdapterManager.supplierTableAdapter = Nothing
        Me.TableAdapterManager.surat_jalanTableAdapter = Nothing
        Me.TableAdapterManager.UpdateOrder = apm.purchasingDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        '
        'PenggunaBindingNavigator
        '
        Me.PenggunaBindingNavigator.AddNewItem = Me.BindingNavigatorAddNewItem
        Me.PenggunaBindingNavigator.BindingSource = Me.PenggunaBindingSource
        Me.PenggunaBindingNavigator.CountItem = Me.BindingNavigatorCountItem
        Me.PenggunaBindingNavigator.DeleteItem = Me.BindingNavigatorDeleteItem
        Me.PenggunaBindingNavigator.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BindingNavigatorMoveFirstItem, Me.BindingNavigatorMovePreviousItem, Me.BindingNavigatorSeparator, Me.BindingNavigatorPositionItem, Me.BindingNavigatorCountItem, Me.BindingNavigatorSeparator1, Me.BindingNavigatorMoveNextItem, Me.BindingNavigatorMoveLastItem, Me.BindingNavigatorSeparator2, Me.BindingNavigatorAddNewItem, Me.BindingNavigatorDeleteItem, Me.PenggunaBindingNavigatorSaveItem})
        Me.PenggunaBindingNavigator.Location = New System.Drawing.Point(0, 0)
        Me.PenggunaBindingNavigator.MoveFirstItem = Me.BindingNavigatorMoveFirstItem
        Me.PenggunaBindingNavigator.MoveLastItem = Me.BindingNavigatorMoveLastItem
        Me.PenggunaBindingNavigator.MoveNextItem = Me.BindingNavigatorMoveNextItem
        Me.PenggunaBindingNavigator.MovePreviousItem = Me.BindingNavigatorMovePreviousItem
        Me.PenggunaBindingNavigator.Name = "PenggunaBindingNavigator"
        Me.PenggunaBindingNavigator.PositionItem = Me.BindingNavigatorPositionItem
        Me.PenggunaBindingNavigator.Size = New System.Drawing.Size(419, 25)
        Me.PenggunaBindingNavigator.TabIndex = 0
        Me.PenggunaBindingNavigator.Text = "BindingNavigator1"
        '
        'BindingNavigatorMoveFirstItem
        '
        Me.BindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveFirstItem.Image = CType(resources.GetObject("BindingNavigatorMoveFirstItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveFirstItem.Name = "BindingNavigatorMoveFirstItem"
        Me.BindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveFirstItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMoveFirstItem.Text = "Move first"
        '
        'BindingNavigatorMovePreviousItem
        '
        Me.BindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMovePreviousItem.Image = CType(resources.GetObject("BindingNavigatorMovePreviousItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMovePreviousItem.Name = "BindingNavigatorMovePreviousItem"
        Me.BindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMovePreviousItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMovePreviousItem.Text = "Move previous"
        '
        'BindingNavigatorSeparator
        '
        Me.BindingNavigatorSeparator.Name = "BindingNavigatorSeparator"
        Me.BindingNavigatorSeparator.Size = New System.Drawing.Size(6, 25)
        '
        'BindingNavigatorPositionItem
        '
        Me.BindingNavigatorPositionItem.AccessibleName = "Position"
        Me.BindingNavigatorPositionItem.AutoSize = False
        Me.BindingNavigatorPositionItem.Name = "BindingNavigatorPositionItem"
        Me.BindingNavigatorPositionItem.Size = New System.Drawing.Size(50, 23)
        Me.BindingNavigatorPositionItem.Text = "0"
        Me.BindingNavigatorPositionItem.ToolTipText = "Current position"
        '
        'BindingNavigatorCountItem
        '
        Me.BindingNavigatorCountItem.Name = "BindingNavigatorCountItem"
        Me.BindingNavigatorCountItem.Size = New System.Drawing.Size(35, 15)
        Me.BindingNavigatorCountItem.Text = "of {0}"
        Me.BindingNavigatorCountItem.ToolTipText = "Total number of items"
        '
        'BindingNavigatorSeparator1
        '
        Me.BindingNavigatorSeparator1.Name = "BindingNavigatorSeparator"
        Me.BindingNavigatorSeparator1.Size = New System.Drawing.Size(6, 6)
        '
        'BindingNavigatorMoveNextItem
        '
        Me.BindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveNextItem.Image = CType(resources.GetObject("BindingNavigatorMoveNextItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveNextItem.Name = "BindingNavigatorMoveNextItem"
        Me.BindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveNextItem.Size = New System.Drawing.Size(23, 20)
        Me.BindingNavigatorMoveNextItem.Text = "Move next"
        '
        'BindingNavigatorMoveLastItem
        '
        Me.BindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveLastItem.Image = CType(resources.GetObject("BindingNavigatorMoveLastItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveLastItem.Name = "BindingNavigatorMoveLastItem"
        Me.BindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveLastItem.Size = New System.Drawing.Size(23, 20)
        Me.BindingNavigatorMoveLastItem.Text = "Move last"
        '
        'BindingNavigatorSeparator2
        '
        Me.BindingNavigatorSeparator2.Name = "BindingNavigatorSeparator"
        Me.BindingNavigatorSeparator2.Size = New System.Drawing.Size(6, 6)
        '
        'BindingNavigatorAddNewItem
        '
        Me.BindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorAddNewItem.Image = CType(resources.GetObject("BindingNavigatorAddNewItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorAddNewItem.Name = "BindingNavigatorAddNewItem"
        Me.BindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorAddNewItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorAddNewItem.Text = "Add new"
        '
        'BindingNavigatorDeleteItem
        '
        Me.BindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorDeleteItem.Image = CType(resources.GetObject("BindingNavigatorDeleteItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorDeleteItem.Name = "BindingNavigatorDeleteItem"
        Me.BindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorDeleteItem.Size = New System.Drawing.Size(23, 20)
        Me.BindingNavigatorDeleteItem.Text = "Delete"
        '
        'PenggunaBindingNavigatorSaveItem
        '
        Me.PenggunaBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.PenggunaBindingNavigatorSaveItem.Image = CType(resources.GetObject("PenggunaBindingNavigatorSaveItem.Image"), System.Drawing.Image)
        Me.PenggunaBindingNavigatorSaveItem.Name = "PenggunaBindingNavigatorSaveItem"
        Me.PenggunaBindingNavigatorSaveItem.Size = New System.Drawing.Size(23, 23)
        Me.PenggunaBindingNavigatorSaveItem.Text = "Save Data"
        '
        'PenggunaDataGridView
        '
        Me.PenggunaDataGridView.AutoGenerateColumns = False
        Me.PenggunaDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.PenggunaDataGridView.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn1, Me.DataGridViewTextBoxColumn2, Me.DataGridViewTextBoxColumn3, Me.DataGridViewTextBoxColumn4, Me.DataGridViewTextBoxColumn5})
        Me.PenggunaDataGridView.DataSource = Me.PenggunaBindingSource
        Me.PenggunaDataGridView.Location = New System.Drawing.Point(99, 75)
        Me.PenggunaDataGridView.Name = "PenggunaDataGridView"
        Me.PenggunaDataGridView.Size = New System.Drawing.Size(300, 220)
        Me.PenggunaDataGridView.TabIndex = 1
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.DataPropertyName = "kd_pengguna_jenis"
        Me.DataGridViewTextBoxColumn1.HeaderText = "kd_pengguna_jenis"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        '
        'DataGridViewTextBoxColumn2
        '
        Me.DataGridViewTextBoxColumn2.DataPropertyName = "kd_pengguna"
        Me.DataGridViewTextBoxColumn2.HeaderText = "kd_pengguna"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.DataPropertyName = "nm_pengguna"
        Me.DataGridViewTextBoxColumn3.HeaderText = "nm_pengguna"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        '
        'DataGridViewTextBoxColumn4
        '
        Me.DataGridViewTextBoxColumn4.DataPropertyName = "login"
        Me.DataGridViewTextBoxColumn4.HeaderText = "login"
        Me.DataGridViewTextBoxColumn4.Name = "DataGridViewTextBoxColumn4"
        '
        'DataGridViewTextBoxColumn5
        '
        Me.DataGridViewTextBoxColumn5.DataPropertyName = "sandi"
        Me.DataGridViewTextBoxColumn5.HeaderText = "sandi"
        Me.DataGridViewTextBoxColumn5.Name = "DataGridViewTextBoxColumn5"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(419, 315)
        Me.Controls.Add(Me.PenggunaDataGridView)
        Me.Controls.Add(Me.PenggunaBindingNavigator)
        Me.Name = "Form1"
        Me.Text = "Form1"
        CType(Me.PurchasingDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PenggunaBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PenggunaBindingNavigator, System.ComponentModel.ISupportInitialize).EndInit()
        Me.PenggunaBindingNavigator.ResumeLayout(False)
        Me.PenggunaBindingNavigator.PerformLayout()
        CType(Me.PenggunaDataGridView, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents PurchasingDataSet As apm.purchasingDataSet
    Friend WithEvents PenggunaBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents PenggunaTableAdapter As apm.purchasingDataSetTableAdapters.penggunaTableAdapter
    Friend WithEvents TableAdapterManager As apm.purchasingDataSetTableAdapters.TableAdapterManager
    Friend WithEvents PenggunaBindingNavigator As System.Windows.Forms.BindingNavigator
    Friend WithEvents BindingNavigatorAddNewItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorCountItem As System.Windows.Forms.ToolStripLabel
    Friend WithEvents BindingNavigatorDeleteItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMoveFirstItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMovePreviousItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorSeparator As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents BindingNavigatorPositionItem As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents BindingNavigatorSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents BindingNavigatorMoveNextItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMoveLastItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorSeparator2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents PenggunaBindingNavigatorSaveItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents PenggunaDataGridView As System.Windows.Forms.DataGridView
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn4 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn5 As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
