using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SalonApp
{
    public partial class CustomerCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ポストバックかどうか判定する（他のWebページから遷移してきたかどうか)
            if (!IsPostBack)
            {
                //他のフォームから遷移してきたとき
                if (Request.QueryString["id"]== null)
                {
                    //UQLにクエリ文字列idが含まれていないときには
                    //デフォルトモード = 挿入モードにする
                    FormView1.DefaultMode = FormViewMode.Insert;
                }
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void customer_nameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            //顧客IDの取得
            int customer_id = GetNewId();

            if (customer_id != -1)
            {
                //顧客IDが取得できる場合、セットする
                e.Values["customer_id"] = customer_id;
                //初回来店日の自動入力
                e.Values["first_date"] = DateTime.Now;
            }
            else
            {
                e.Cancel = true;
            }
        }

        private int GetNewId()
        {
            //戻り値の変数の定義（初期値-1でキャンセル処理）
            int ret = -1;

            //ADO.NETの利用
            try
            {
                //接続文字列の取得
                string connectionString = System.Configuration.ConfigurationManager.
                    ConnectionStrings["SalonDBConnectionString"].ConnectionString;

                //コネクションの定義
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //SQLステートメントの定義
                    string queryString = "SELECT ISNULL(MAX(customer_id),0)+1 FROM tbl_customer";

                    //コマンドの定義
                    SqlCommand command = new SqlCommand(queryString, connection);
                    
                    //コネクションを開く
                    connection.Open();

                    //SQLステートメントの実行結果の取得
                    Object result = command.ExecuteScalar();

                    //戻り値の設定
                    if (result != null)
                    {
                        ret = (int)result;
                    }
                }
            
            }
            catch (Exception)
            {
                //エラー処理
            }
            //新規データ用の顧客IDを渡す
            return ret;
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            //現在のモードの判定
            if (e.CommandName == "Cancel" && FormView1.CurrentMode == FormViewMode.Insert)
            {
                //リストに戻る
                Response.Redirect("CustomerList.aspx");
            }
        }
    }
}