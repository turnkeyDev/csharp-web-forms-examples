using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpExample
{
    public partial class Contact : Page
    {
        protected readonly List<VideoGame> VideoGameList = new List<VideoGame>();
        protected void Page_Load(object sender, EventArgs e) //Occurs when the page loads.
        {
            GetDataSet();
        }
        private void GetDataSet()
        {
            //This will simulate populating options for a video game. We will pretend that the data came from a db.
            VideoGame vg1 = new VideoGame();
            VideoGame vg2 = new VideoGame();
            VideoGame vg3 = new VideoGame();
            vg1.id = 1;
            vg1.name = "Earthbound";
            vg2.id = 2;
            vg2.name = "Super Smash Bros.";
            vg3.id = 3;
            vg3.name = "Kingdom Hearts";
            VideoGameList.Add(vg1);
            VideoGameList.Add(vg2);
            VideoGameList.Add(vg3);
        }
        public class VideoGame
        {
            public int id { get; set; }
            public string name { get; set; }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //Do submit items here
        }
    }
}