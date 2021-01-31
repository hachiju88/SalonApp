using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SalonApp
{
    public partial class TaskMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //新しい施術IDの取得
            int newTaskID = GetNewTaskID();

            if (newTaskID == -1)
            {
                //失敗時
                MessageLabel.Text = "施術IDの取得に失敗しました。";
                return;
            }
            //SQLステートメントの定義（新規用）
            string queryString = "SET IDENTITY_INSERT tbl_task ON;" + "INSERT INTO tbl_task" +
                " (task_id, task_name, maker, task_price)" +
                " VALUES (" + newTaskID + ",'（新規）', '', 0)";

            try
            {
                //接続文字列の取得
                string connectionString = System.Configuration.ConfigurationManager.
                    ConnectionStrings["SalonDBConnectionString"].ConnectionString;
                //コネクションの定義
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //コマンドの定義
                    SqlCommand command = new SqlCommand(queryString, connection);
                    //コネクションを開く
                    connection.Open();
                    //SQLステートメントの実行
                    command.ExecuteNonQuery();
                    //データの読み直し
                    GridView1.DataBind();

                    MessageLabel.Text = "新しい施術を追加しました。";

                }
            }
            catch (Exception ex)
            {
                MessageLabel.Text = "エラーが発生したため、処理を中止します。<br />" + ex.Message;
            }
        }
        private int GetNewTaskID()
        {
            int ret = -1;

            try
            {
                //接続文字列の取得
                string connectionString = System.Configuration.ConfigurationManager.
                    ConnectionStrings["SalonDBConnectionString"].ConnectionString;

                //コネクションの定義
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //Sqlステートメントの定義
                    string queryString = "SELECT ISNULL(MAX(task_id), 0)+1 FROM tbl_task";
                    //コマンドを定義
                    SqlCommand command = new SqlCommand(queryString, connection);
                    //コネクションを開く
                    connection.Open();
                    //Sqlステートメント実行結果を取得
                    Object result = command.ExecuteScalar();
                    //戻り値の設定
                    if (result != null)
                    {
                        ret = Convert.ToInt32(result.ToString());
                    }
                }
            }
            catch (Exception)
            {

            }
            return ret;
        }
    }
}