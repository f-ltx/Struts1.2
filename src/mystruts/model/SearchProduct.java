package mystruts.model;

import java.sql.*;
import java.util.*;

import mystruts.actionform.*;

/**
 * Description:SearchProduct
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class SearchProduct extends util.Struts {
    private ProductForm form;

    public SearchProduct(ProductForm form) throws Exception {
        super();
        this.form = form;
    }

    /**
     * Description:查询产品信息，并通过List返回查询结果
     */
    public List<String[]> search() throws Exception {
        List<String[]> result = new LinkedList<String[]>();
        String sql = "SELECT * FROM t_products WHERE product_name like '%"
                + form.getProductName() + "%'";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        // 开始执行SELECT语句
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            String[] row = new String[3];
            row[0] = rs.getString(1);
            row[1] = rs.getString(2);
            row[2] = rs.getString(3);
            result.add(row);
        }
        rs.close();
        conn.close();
        return result;
    }
}
