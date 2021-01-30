using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SalonApp
{
    public partial class Logon : System.Web.UI.Page
    {
        int staffID;
        string staffName;
        bool adminFlag;

        protected void Page_Load(object sender, EventArgs e)
        {
            UserIDTextBox.Focus();

            this.Form.DefaultButton = LogonButton.UniqueID;
        }

        protected void RogonButton_Click(object sender, EventArgs e)
        {
            //ユーザーIDのチェック
            if (UserIDTextBox.Text == "")
            {
                ErrorLabel.Text = "ユーザーID を入力してください。";
                return;
            }
            //パスワードのチェック
            if (PasswordTextBox.Text == "")
            {
                ErrorLabel.Text = "パスワード を入力してください。";
                return;
            }
            //ユーザーとパスワードの検証
            if (!CheckUserPassword(UserIDTextBox.Text, PasswordTextBox.Text))
            {
                ErrorLabel.Text = "ユーザーID または パスワードが違います";
                return;
            }
            //セッション変数に値をセット
            Session["staffID"] = staffID;
            Session["staffName"] = staffName;
            Session["adminFlag"] = adminFlag;
            //メニュー画面に遷移
            Response.Redirect("Menu.aspx");
        }
        //メソッド
        //ユーザーIDとパスワードを検証
        private bool CheckUserPassword(string userid, string password)
        {
            bool ret;
            string queryString;

            try
            {
                queryString = "SELECT staff_id, staff_name, admin_flag FROM tbl_staff " +
                    "WHERE user_id = '" + userid.Replace("'", "'") +
                    "' AND password = '" + password.Replace("'", "'") +
                    "COLLATE Japanese_CS_AS_KS_WS";     //SQL Serverでの照合順序、大文字小文字の区別をする表記

                //接続文字列の取得
                string connectionString = System.Configuration.ConfigurationManager
                    .ConnectionStrings["SalonDBConnectionString"].ConnectionString;
                //コネクションの定義
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //コマンド定義
                    SqlCommand command = new SqlCommand(queryString, connection);
                    //コネクションを開く
                    connection.Open();
                    //コマンドからデータリーダーの定義
                    SqlDataReader reader = command.ExecuteReader();
                    //データリーダーから結果を読み込む
                    if (reader.Read())
                    {
                        //対象データが存在する場合
                        //正しいユーザーIDとパスワードが指定されると
                        //データリーダーから読んだデータをメンバ変数にセットする
                        staffID = Int32.Parse(reader["user_id"].ToString());
                        staffName = reader["staff_name"].ToString();
                        adminFlag = Convert.ToBoolean(reader["admin_flag"]);

                        ret = true;
                    }
                    else
                    {
                        ret = false;
                    }
                }
            }
            catch(Exception)
            {
                ret = false;
            }
            return ret;
        }
    }
}