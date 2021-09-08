using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpExample2.handlers
{
    /// <summary>
    /// Summary description for SubmissionHomeHandler
    /// </summary>
    public class SubmissionHomeHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            context.Response.Write(0);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}