using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// DO 的摘要说明
/// </summary>
public class DO
{
    public DO()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public OleDbConnection DO2()
    {
        OleDbConnection conn = new OleDbConnection("provider=microsoft.ace.oledb.12.0; data source=|DataDirectory|Database.accdb");
        return conn;
    }
    public DataTable rows(string sql, string table)
    {
        OleDbConnection conn = DO2();
        OleDbCommand cmd = new OleDbCommand(sql, conn);
        OleDbDataAdapter adp = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, table);
        return ds.Tables[table];

    }
    public OleDbDataReader row(string sql)
    {
        OleDbConnection conn = DO2();
        OleDbCommand cmd = new OleDbCommand(sql, conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        
        return dr; conn.Close();
    }
    public bool crud_sql(String sql)
    {
        OleDbConnection conn = DO2();
        OleDbCommand cmd = new OleDbCommand(sql, conn);
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        conn.Close();
        if (i > 0)
        {
           
            return true;
        }
        else
        {
            return false; 
        }
        
        
    }
}