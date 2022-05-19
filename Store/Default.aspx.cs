using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Store
{
    public partial class Default : System.Web.UI.Page
    {
        //Connection Strings
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["admin"].ConnectionString.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            highlight.Visible = true;
            games.Visible = false;

            //Setting Sql Connection
            SqlConnection baglanti = new SqlConnection(con);
            
            GetGames();

            //Games Page
            string Url = Request.RawUrl;
            int gamename = Url.IndexOf("game".ToLower());
            if (gamename >= 0)
            {
                highlight.Visible = false;
                games.Visible = true;

                Url = RouteData.Values["gamename"].ToString();

                PagedDataSource pds = new PagedDataSource();
                SqlDataAdapter adp = new SqlDataAdapter("select * from artadoco_admin.Products where URL='" + Url + "'", baglanti);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                pds.DataSource = dt.DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = 1;
                game_info.DataSource = pds;
                game_info.DataBind();
                game_info.RepeatColumns = 1;

                PagedDataSource slpds = new PagedDataSource();
                SqlDataAdapter sladp = new SqlDataAdapter("select * from artadoco_admin.Products where URL='" + Url + "'", baglanti);
                DataTable sldt = new DataTable();
                sladp.Fill(sldt);
                slpds.DataSource = dt.DefaultView;
                slpds.AllowPaging = true;
                slpds.PageSize = 1;
                my_slider.DataSource = slpds;
                my_slider.DataBind();
                my_slider.RepeatColumns = 1;
            }
        }

        public void GetGames()
        {
            //Setting Sql Connection
            SqlConnection baglanti = new SqlConnection(con);

            PagedDataSource pds = new PagedDataSource();
            SqlDataAdapter adp = new SqlDataAdapter("select * from artadoco_admin.Products order by ID desc", baglanti);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 10;
            Products.DataSource = pds;
            Products.DataBind();
            Products.RepeatColumns = 2;
        }
    }
}