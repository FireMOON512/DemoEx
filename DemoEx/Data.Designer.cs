namespace DemoEx
{
    partial class Data
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Data));
            this.panel2 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnBACK = new System.Windows.Forms.Button();
            this.btnDEL = new System.Windows.Forms.Button();
            this.btnADD = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.clientstransportsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.driveDataSet = new DemoEx.DriveDataSet();
            this.clients_transportsTableAdapter = new DemoEx.DriveDataSetTableAdapters.clients_transportsTableAdapter();
            this.driveDataSet1 = new DemoEx.DriveDataSet1();
            this.transportBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.transportTableAdapter = new DemoEx.DriveDataSet1TableAdapters.transportTableAdapter();
            this.driveDataSet2 = new DemoEx.DriveDataSet2();
            this.transportBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.transportTableAdapter1 = new DemoEx.DriveDataSet2TableAdapters.transportTableAdapter();
            this.transporttypeidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.transportmodelDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.transportnumberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.transportenabledDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.clientstransportsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(37)))), ((int)(((byte)(181)))));
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(1, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1167, 100);
            this.panel2.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Gabriola", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(449, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(181, 65);
            this.label1.TabIndex = 3;
            this.label1.Text = "\"Мегадрайв\"";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(117, 100);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(37)))), ((int)(((byte)(181)))));
            this.panel1.Controls.Add(this.btnBACK);
            this.panel1.Controls.Add(this.btnDEL);
            this.panel1.Controls.Add(this.btnADD);
            this.panel1.Location = new System.Drawing.Point(1, 491);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1167, 100);
            this.panel1.TabIndex = 3;
            // 
            // btnBACK
            // 
            this.btnBACK.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(5)))), ((int)(((byte)(192)))), ((int)(((byte)(190)))));
            this.btnBACK.Font = new System.Drawing.Font("Gabriola", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnBACK.Location = new System.Drawing.Point(971, 16);
            this.btnBACK.Name = "btnBACK";
            this.btnBACK.Size = new System.Drawing.Size(161, 63);
            this.btnBACK.TabIndex = 3;
            this.btnBACK.Text = "Назад";
            this.btnBACK.UseVisualStyleBackColor = false;
            this.btnBACK.Click += new System.EventHandler(this.btnBACK_Click);
            // 
            // btnDEL
            // 
            this.btnDEL.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(5)))), ((int)(((byte)(192)))), ((int)(((byte)(190)))));
            this.btnDEL.Font = new System.Drawing.Font("Gabriola", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnDEL.Location = new System.Drawing.Point(196, 16);
            this.btnDEL.Name = "btnDEL";
            this.btnDEL.Size = new System.Drawing.Size(161, 63);
            this.btnDEL.TabIndex = 2;
            this.btnDEL.Text = "Удаление данных";
            this.btnDEL.UseVisualStyleBackColor = false;
            this.btnDEL.Click += new System.EventHandler(this.btnDEL_Click);
            // 
            // btnADD
            // 
            this.btnADD.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(5)))), ((int)(((byte)(192)))), ((int)(((byte)(190)))));
            this.btnADD.Font = new System.Drawing.Font("Gabriola", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnADD.Location = new System.Drawing.Point(11, 16);
            this.btnADD.Name = "btnADD";
            this.btnADD.Size = new System.Drawing.Size(161, 63);
            this.btnADD.TabIndex = 1;
            this.btnADD.Text = "Добавление данных";
            this.btnADD.UseVisualStyleBackColor = false;
            this.btnADD.Click += new System.EventHandler(this.btnADD_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.transporttypeidDataGridViewTextBoxColumn,
            this.transportmodelDataGridViewTextBoxColumn,
            this.transportnumberDataGridViewTextBoxColumn,
            this.transportenabledDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.transportBindingSource1;
            this.dataGridView1.Location = new System.Drawing.Point(12, 106);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(447, 225);
            this.dataGridView1.TabIndex = 4;
            // 
            // clientstransportsBindingSource
            // 
            this.clientstransportsBindingSource.DataMember = "clients_transports";
            this.clientstransportsBindingSource.DataSource = this.driveDataSet;
            // 
            // driveDataSet
            // 
            this.driveDataSet.DataSetName = "DriveDataSet";
            this.driveDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // clients_transportsTableAdapter
            // 
            this.clients_transportsTableAdapter.ClearBeforeFill = true;
            // 
            // driveDataSet1
            // 
            this.driveDataSet1.DataSetName = "DriveDataSet1";
            this.driveDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // transportBindingSource
            // 
            this.transportBindingSource.DataMember = "transport";
            this.transportBindingSource.DataSource = this.driveDataSet1;
            // 
            // transportTableAdapter
            // 
            this.transportTableAdapter.ClearBeforeFill = true;
            // 
            // driveDataSet2
            // 
            this.driveDataSet2.DataSetName = "DriveDataSet2";
            this.driveDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // transportBindingSource1
            // 
            this.transportBindingSource1.DataMember = "transport";
            this.transportBindingSource1.DataSource = this.driveDataSet2;
            // 
            // transportTableAdapter1
            // 
            this.transportTableAdapter1.ClearBeforeFill = true;
            // 
            // transporttypeidDataGridViewTextBoxColumn
            // 
            this.transporttypeidDataGridViewTextBoxColumn.DataPropertyName = "transport_type_id";
            this.transporttypeidDataGridViewTextBoxColumn.HeaderText = "transport_type_id";
            this.transporttypeidDataGridViewTextBoxColumn.Name = "transporttypeidDataGridViewTextBoxColumn";
            // 
            // transportmodelDataGridViewTextBoxColumn
            // 
            this.transportmodelDataGridViewTextBoxColumn.DataPropertyName = "transport_model";
            this.transportmodelDataGridViewTextBoxColumn.HeaderText = "Модель транспорта";
            this.transportmodelDataGridViewTextBoxColumn.Name = "transportmodelDataGridViewTextBoxColumn";
            // 
            // transportnumberDataGridViewTextBoxColumn
            // 
            this.transportnumberDataGridViewTextBoxColumn.DataPropertyName = "transport_number";
            this.transportnumberDataGridViewTextBoxColumn.HeaderText = "Номер транспорта";
            this.transportnumberDataGridViewTextBoxColumn.Name = "transportnumberDataGridViewTextBoxColumn";
            // 
            // transportenabledDataGridViewTextBoxColumn
            // 
            this.transportenabledDataGridViewTextBoxColumn.DataPropertyName = "transport_enabled";
            this.transportenabledDataGridViewTextBoxColumn.HeaderText = "Доступен ли транспорт?";
            this.transportenabledDataGridViewTextBoxColumn.Name = "transportenabledDataGridViewTextBoxColumn";
            // 
            // Data
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1170, 592);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Data";
            this.Text = "Окно вывода данных";
            this.Load += new System.EventHandler(this.Data_Load);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.clientstransportsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.driveDataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private DriveDataSet driveDataSet;
        private System.Windows.Forms.BindingSource clientstransportsBindingSource;
        private DriveDataSetTableAdapters.clients_transportsTableAdapter clients_transportsTableAdapter;
        private System.Windows.Forms.Button btnBACK;
        private System.Windows.Forms.Button btnDEL;
        private System.Windows.Forms.Button btnADD;
        private DriveDataSet1 driveDataSet1;
        private System.Windows.Forms.BindingSource transportBindingSource;
        private DriveDataSet1TableAdapters.transportTableAdapter transportTableAdapter;
        private DriveDataSet2 driveDataSet2;
        private System.Windows.Forms.BindingSource transportBindingSource1;
        private DriveDataSet2TableAdapters.transportTableAdapter transportTableAdapter1;
        private System.Windows.Forms.DataGridViewTextBoxColumn transporttypeidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportmodelDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportnumberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportenabledDataGridViewTextBoxColumn;
    }
}