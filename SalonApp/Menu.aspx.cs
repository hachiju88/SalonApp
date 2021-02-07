using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonApp
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //管理者権限での画面出力の選択

            switch (GetUserLevel())
            {
                case 1:     //管理者
                    AdminPanel.Visible = true;
                    UserPanel.Visible = false;
                    break;
                case 2:     //一般ユーザー
                    AdminPanel.Visible = false;
                    UserPanel.Visible = true;
                    break;
                default:
                    Response.Redirect("Logon.aspx");
                    break;
            }
        }

        private int GetUserLevel()
        {
            //ユーザーレベルの取得
            //管理者＝１、一般ユーザー＝２、その他（非ログオン時）＝０

            //セッション変数から取得した値の判定
            if (Session["AdminFlag"] == null)
            {
                //セッション変数の値が存在しない場合
                return 0;
            }
            if (Convert.ToBoolean(Session["AdminFlag"]))
            {
                //  セッション変数Admin = true
                return 1;
            }
            else
            {
                //セッション変数Admin = false
                return 2;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //セッション変数をクリアする
            Session.Clear();
            //[ログオン]フォームを遷移
            Response.Redirect("Logon.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //セッション変数をクリアする
            Session.Clear();
            //[ログオン]フォームを遷移
            Response.Redirect("Logon.aspx");
        }
    }
}