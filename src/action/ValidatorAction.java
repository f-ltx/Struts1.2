package action;

import javax.servlet.http.*;

import org.apache.struts.action.*;

public class ValidatorAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        response.setCharacterEncoding("GBK");
        try {
            response.getWriter().println("验证成功!");
        } catch (Exception e) {
        }
        return null;
    }
}