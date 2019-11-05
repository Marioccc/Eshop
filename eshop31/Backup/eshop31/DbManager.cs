using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
/// <summary>
///DbManager 的摘要说明
/// </summary>
public class DbManager
{
    #region  类中的全局变量-数据连接字符串
    //public static string strcon = ConfigurationManager.ConnectionStrings[" eshopConnectionString"].ToString();//数据连接字符串,使用WINDOWS登录方式
    public static string strcon = "Data Source=(local);Initial Catalog=eshop;Integrated Security=True";
    #endregion

    #region 构造函数
    /// <summary>
    /// 构造函数，初始化时连接数据库
    /// </summary>
    public DbManager()
    {
        strcon = ConfigurationManager.ConnectionStrings[" eshopConnectionString"].ToString();
    }
    #endregion

    #region 返回SqlDataReader-ExceRead类型的数据
    /// <summary>
    /// 此方法返回一个SqlDataReader-ExceRead类型的参数
    /// </summary>
    /// <param name="SqlCom"></param>
    /// <returns></returns>
    public static SqlDataReader ExceRead(string SqlCom)
    {
        SqlConnection con = new SqlConnection(strcon);
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(SqlCom, con);
            SqlDataReader read = com.ExecuteReader();

            return read;

        }
        catch (System.Data.SqlClient.SqlException E)
        {
            throw new Exception(E.Message);
        }

    }
    #endregion

    #region 返回SqlDataReader-ExceScalar类型的数据
    /// <summary>
    /// 此方法返回一个SqlDataReader-ExceCcalar类型的参数
    /// </summary>
    /// <param name="SqlCom"></param>
    /// <returns></returns>
    public static string ExceScalar(string SqlCom)
    {
        SqlConnection con = new SqlConnection(strcon);
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(SqlCom, con);
            SqlDataReader dr = com.ExecuteReader();
            if (!dr.Read())
            {
                return "1";
            }
            else
            {
                string read = dr[0].ToString();
                return read;
            }
        }
        catch (System.Data.SqlClient.SqlException E)
        {
            throw new Exception(E.Message);
        }

    }
    #endregion

    #region  返回DataSet类型数据并获得tableName参数
    /// <summary>
    /// 此方法返回一个DataSet类型
    /// </summary>
    /// <param name="SqlCom">要执行的SQL语句</param>
    /// <returns></returns>
    public static DataSet GetDataSet(string strsql, string tableName)
    {

        //定义一个数据集，用来赋值给应用程序的一个数据集
        SqlConnection conn = new SqlConnection(strcon);
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter DA = new SqlDataAdapter(strsql, conn);
            DA.Fill(ds, tableName);
        }
        catch (System.Data.SqlClient.SqlException E)
        {
            throw new Exception(E.Message);
        }
        return ds;
    }
    #endregion

    #region  执行SQL语句,包括增删改
    /// <summary>
    /// 此方法用来执行SQL语句
    /// </summary>
    /// <param name="SqlCom">要执行的SQL语句</param>
    /// <returns></returns>
    public static bool ExceSQL(string strSqlCom)
    {
        SqlConnection conn = new SqlConnection(strcon);
        SqlCommand com = new SqlCommand(strSqlCom, conn);
        try
        {
            //判断数据库是否为连连状态
            if (conn.State == System.Data.ConnectionState.Closed)
            { conn.Open(); }
            //执行SQL语句
            com.ExecuteNonQuery();
            //SQL语句执行成功，返回true值
            return true;
        }
        catch
        {
            //SQL语句执行失败，返回false值
            return false;
        }
        finally
        {
            //关闭数据库连接
            conn.Close();
        }
    }
    #endregion

}
