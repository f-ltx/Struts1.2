package validate.action;

import javax.servlet.http.*;

import org.apache.struts.action.*;

/**
 * Description:简单验证
 *
 * @author litianxiang
 * @date 2019/3/26
 */
public class SimpleValidationAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        // 设置在目标页中显示的信息字符串
        request.setAttribute("success", "提交成功!");
        // 跳转到目录页（simple所指的JSP页）
        return mapping.findForward("simple");
    }
}