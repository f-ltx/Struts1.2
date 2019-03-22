package mystruts.action;

import javax.servlet.http.*;

import org.apache.struts.action.*;
import mystruts.actionform.*;
import mystruts.model.*;

/**
 * Description:saveProduct
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class SaveProductAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        ProductForm saveProductForm = (ProductForm) form;
        try {
            Product product = new Product(saveProductForm);
            // 保存产品信息
            product.save();
            request.setAttribute("info", "保存成功!");
        } catch (Exception e) {
            request.setAttribute("info", e.getMessage());
        }
        return mapping.findForward("save");
    }
}
