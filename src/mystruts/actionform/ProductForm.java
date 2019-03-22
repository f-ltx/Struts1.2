package mystruts.actionform;

import org.apache.struts.action.*;

/**
 * Description:ProductForm
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class ProductForm extends ActionForm {
    /**
     * Description:产品ID
     */
    private String productID;
    /**
     * Description:产品名称
     */
    private String productName;
    /**
     * Description:产品价格
     */
    private float price;

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
