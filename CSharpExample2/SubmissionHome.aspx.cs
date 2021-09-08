using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpExample2
{
    public partial class SubmissionHome : System.Web.UI.Page
    {
        protected string TypedText;
        protected bool isSubmitted = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.Form["txttest"]))
            {
                TypedText = Request.Form["txttest"];
                isSubmitted = true;
            }

        }
    }
}