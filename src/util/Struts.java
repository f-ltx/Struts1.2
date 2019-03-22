package util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

/**
 * Description:数据库连接池类
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class Struts {
    protected Context ctx = new InitialContext();
    protected DataSource ds;
    protected Connection conn;

    public Struts() throws Exception {
        ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/struts");
        // 从数据库连接池获得一个Connection
        conn = ds.getConnection();
    }
}