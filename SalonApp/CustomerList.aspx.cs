using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonApp
{
    public partial class CustomerList : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["StaffID"] == null)
            {
                //ユーザー認証がされていないので[ログオン]に戻る
                Response.Redirect("Logon.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //このWebページをキャッシュしないように設定
           Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //編集ボタン　カード型ビューにリンク
        {
            
        }
    }
}