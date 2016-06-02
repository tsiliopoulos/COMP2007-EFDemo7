using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace COMP2007_EFDemo7.App_Code
{
    public static class MessageBox
    {
        public static void ShowMessage(string MessageText, Page MyPage)
        {
            MyPage.ClientScript.RegisterStartupScript(MyPage.GetType(), "MessageBox", "alert('" + MessageText.Replace("'", "\'") + "');", true);
        }

    }
}