using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Eshop.App_Code
{
    
    public class dataLayer
    {
        /// <summary>
        /// 获取一个数据连接
        /// </summary>
        /// <returns>返回一个连接对象</returns>
        public SqlConnection getConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["eshopConnectionString"].ToString();
            return conn;
        }

        /// <summary>
        /// 对数据进行增删改
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public bool updateData(string cmd)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand command = new SqlCommand(cmd, conn);
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                conn.Close();
                return true;
            }
            conn.Close();
            return false;
        }

        /// <summary>
        /// 返回所查询的数据表的数据数量
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public int getDataNum(string cmd)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand command = new SqlCommand(cmd, conn);
            int result = command.ExecuteNonQuery();
            return result;
        }


        public SqlDataReader getReader(string cmd)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand command = new SqlCommand(cmd, conn);
            SqlDataReader reader = command.ExecuteReader();
            return reader;
        }



        /// <summary>
        /// 获取所要查询的数据集合
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public DataSet getData(string cmd)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd,getConnection());
            DataSet dataSet = new DataSet();
            dataSet.Clear();
            adapter.Fill(dataSet);
            conn.Close();
            return dataSet;
        }

        /// <summary>
        /// 询问指定数据是否存在
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public object queryData(string cmd)
        {
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand command = new SqlCommand(cmd,conn);
            
            var result = command.ExecuteScalar();
            conn.Close();
            return result;
        }
    }

}