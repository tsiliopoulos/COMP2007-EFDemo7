using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_EFDemo7.Models;
using System.Web.ModelBinding;

namespace COMP2007_EFDemo7
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time, populate the student grid
            if(!IsPostBack)
            {
                GetStudents();
            }
        }

        protected void GetStudents()
        {
           // connect to EF
           using (DefaultConnection db = new DefaultConnection())
            {
                // query the Students Table using EF and LINQ
                var Students = from allStudents in db.Students
                               select allStudents;

                // bind the result to the GridView
                StudentsGridView.DataSource = Students.ToList();
                StudentsGridView.DataBind();
            }
        }

        protected void StudentsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get the selected StudentID using the Grid's DataKey collection
            int StudentID = Convert.ToInt32(StudentsGridView.DataKeys[selectedRow].Values["StudentID"]);

            // use EF to find the selected student from db and remove it
            using (DefaultConnection db = new DefaultConnection())
            {
                Student deletedStudent = (from studentRecords in db.Students
                                         where studentRecords.StudentID == StudentID
                                         select studentRecords).FirstOrDefault();

                db.Students.Remove(deletedStudent);
                db.SaveChanges();
            }

            // refresh the grid
            GetStudents();
        }
    }
}