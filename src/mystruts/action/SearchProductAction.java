package mystruts.action;

import javax.servlet.http.*;

import org.apache.struts.action.*;
import mystruts.actionform.*;
import mystruts.model.*;

import java.util.*;

/**
 * Description:SearchProductAction
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class SearchProductAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        ProductForm searchProductForm = (ProductForm) form;
        try {
            SearchProduct searchProduct = new SearchProduct(searchProductForm);
            // 查询产品信息
            List<String[]> result = searchProduct.search();
            // 有符合条件的产品信息
            if (result.size() > 0) {
                request.setAttribute("result", result);
                request.setAttribute("info", "记录数：" + String.valueOf(result.size()));
            } else {
                // 没有查到任何产品信息
                request.setAttribute("info", "没有符合要求的记录!");
            }
        } catch (Exception e) {
            request.setAttribute("info", e.getMessage());
        }
        return mapping.findForward("search");
    }
}
