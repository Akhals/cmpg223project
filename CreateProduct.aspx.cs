﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace InventoryManagementSystemCMPG223
{
    public partial class CreateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        //DEPENDENCIES

        readonly string ConnString = @"Data Source=GIVEN\SQLEXPRESS;Initial Catalog=InventoryManSysDB;Integrated Security=True;TrustServerCertificate=True";
        SqlConnection conn;
        SqlDataAdapter adapter;
        SqlCommand cmd;
        DataSet ds;

        //-----------CUSTOM METHODS------------
        //INSERTION

        public void InsertProduct(string query)
        {
            try
            {
                conn = new SqlConnection(ConnString);
                conn.Open();
                ds = new DataSet();
                adapter = new SqlDataAdapter();


                cmd = new SqlCommand(query, conn);

                cmd.CommandType = CommandType.StoredProcedure;

                //GET PRODUCT DETAILS FROM THE FORM
                
                string ProductName = Name.Text;
                string ProductDescription = Description.Text;
                double Price = Double.Parse(Price1.Text);
                double ProductSize = Double.Parse(Size.Text);
                int InventoryId =int.Parse(inventoryId.Text);


                // Add parameters to the command
                cmd.Parameters.AddWithValue("@ProductName", ProductName);
                cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription);
                cmd.Parameters.AddWithValue("@ProductSize", ProductSize);
                cmd.Parameters.AddWithValue("@Price", Price);
                cmd.Parameters.AddWithValue("@InventoryId", InventoryId);


                // Execute the stored procedure
                int countUpdated = cmd.ExecuteNonQuery();

                if (countUpdated > 0)
                {
                    FeedbackLbl.Text = "Added product successfully";
                    //TAKE USER TO PRODUCTS PAGE
                    Response.Redirect("Products.aspx");
                }
                else
                {
                    FeedbackLbl.Text = "Failed to add";
                }
            }
            catch (SqlException ex)
            {
                FeedbackLbl.Text = $"SQL Error: {ex.Message}";
            }
            catch (Exception e)
            {
                FeedbackLbl.Text = $"Error: {e.Message}";
            }
            finally
            {
                conn.Close();
            }
        }


        //VALIDATE FORM INPUT

        public Boolean IsValidForm()
        {
            return !string.IsNullOrEmpty(Name.Text) && !string.IsNullOrEmpty(Price1.Text) && 
                !string.IsNullOrEmpty(Description.Text) && !string.IsNullOrEmpty(Size.Text);
        }


        protected void AddProduct_Click(object sender, EventArgs e)
        {
            //add product to database
            try
            {
                    //VALIDATE ENTRY
                if (IsValidForm())
                {
                    // string query = "Insert into producttable(id,name,description,price,size)values(@id,@name,@description,@price,@size)";
                    string query = "InsertProduct";
                    InsertProduct(query);   
                }
                else
                {
                    FeedbackLbl.Text = "All the field(s) are required";
                }

            }catch(Exception ex)
            {
                ex.ToString();
            }
            
                
        }
    }
}