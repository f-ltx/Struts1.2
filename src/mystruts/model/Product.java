package mystruts.model;

import java.sql.*;

import mystruts.actionform.*;

/**
 * Description:Product
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class Product extends util.Struts {
    private ProductForm form;

    public Product(ProductForm form) throws Exception {
        super();
        this.form = form;
        validate();
    }

    /**
     * Description:验证客户端提交的数据
     */
    public void validate() throws Exception {
        if (form.getProductID().trim().equals("")) {
            throw new Exception("产品ID不能为空!");
        }
        if (form.getProductID().length() > 4) {
            throw new Exception("产品ID最长为4位!");
        }
        if (form.getProductName().trim().equals("")) {
            throw new Exception("产品名称不能为空");
        }
        if (Float.compare(form.getPrice(), 0) <= 0) {
            throw new Exception("产品价格必须大于0");
        }
    }

    /**
     * Description:将客户端提交的产品信息保存到t_products中
     */
    public void save() throws Exception {
        try {
            String productID = form.getProductID();
            String productName = form.getProductName();
            float price = form.getPrice();
            String sql = "INSERT INTO t_products VALUES('" + productID + "'," + "'" + productName + "'," + price + ")";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            // 执行INSERT语句
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}
