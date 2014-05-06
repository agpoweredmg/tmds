using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class editSupInfo : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        supplierID_tb.Text = "";
        supplierName_tb.Text = "";
        supplierPhone_tb.Text = "";
        supplierFax_tb.Text = "";
        supplierEmail_tb.Text = "";
        supplierStreet_tb.Text = "";
        supplierCity_tb.Text = "";
        supplierState_tb.Text = "";
        supplierZip_tb.Text = "";
        supplierID_tb.Visible = true;
        SupplierID_lbl.Visible = false;
        choosesupplierid_ddl.Visible = false;
        actionToPerform_ddl.SelectedIndex = 0;
        choosesupplierid_ddl.SelectedIndex = 0;
        supplierID_tb.Visible = true;
        supplierName_tb.Visible = true;
        SupplierName_lbl.Visible = false;
        SupplierID_lbl.Visible = false;
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 1)
        {
            command = new SqlCommand("new_suppliers", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@supplier_name", supplierName_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_phone", supplierPhone_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_fax", supplierFax_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_email", supplierEmail_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_street", supplierStreet_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_suite_box_no", SupplierSuiteNo_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_city", supplierCity_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_state", supplierState_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_zip", supplierZip_tb.Text.ToString());

            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();


            if (actionToPerform_ddl.SelectedIndex == 3)
            {
                command = new SqlCommand("delete_supplier", conn);

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@supplier_Id", choosesupplierid_ddl.SelectedValue.ToString());

                conn.Open();
                command.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
            choosesupplierid_ddl.Visible = true;
        else
        {
            supplierName_tb.Visible = true;
            supplierID_tb.Visible = true;
            choosesupplierid_ddl.Visible = false;
            SupplierID_lbl.Visible = false;
            SupplierName_lbl.Visible = false;
        }
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void choosesupplierid_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {


        string ID = choosesupplierid_ddl.SelectedValue.ToString();
        string oString = "Select * from Suppliers where Supplier_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", ID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {

                supplierName_tb.Text = oReader["Supplier_Name"].ToString();
                supplierPhone_tb.Text = oReader["Supplier_Phone"].ToString();
                supplierFax_tb.Text = oReader["Supplier_Fax"].ToString();
                supplierEmail_tb.Text = oReader["Supplier_Email"].ToString();
                supplierStreet_tb.Text = oReader["Supplier_Street"].ToString();
                SupplierSuiteNo_tb.Text = oReader["Supplier_Suite_Box_No"].ToString();
                supplierCity_tb.Text = oReader["Supplier_City"].ToString();
                supplierState_tb.Text = oReader["Supplier_State"].ToString();
                supplierZip_tb.Text = oReader["Supplier_Zip"].ToString();

            }

        }
        catch (Exception ex)
        {
            SupplierID_lbl.Text = choosesupplierid_ddl.SelectedValue.ToString();
            SupplierName_lbl.Text = choosesupplierid_ddl.SelectedItem.ToString();
            supplierName_tb.Visible = false;
            SupplierName_lbl.Visible = true;
            SupplierID_lbl.Visible = true;
            supplierID_tb.Visible = false;
        }
    }
}