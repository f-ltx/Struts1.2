package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import org.apache.struts.action.*;
import org.apache.struts.actions.*;

/**
 * Descriptoin:跳转action
 */
public class MyDispatchAction extends DispatchAction {
    /**
     * Descriptoin:forward到法文页面
     */
    public ActionForward fr(ActionMapping mapping, ActionForm form,
                            HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher rd = request.getRequestDispatcher("/newGlobal.jsp?language=fr");
            rd.forward(request, response);
        } catch (Exception e) {
        }
        return null;
    }

    /**
     * Descriptoin:forward到英文页面
     */
    public ActionForward en(ActionMapping mapping, ActionForm form,
                            HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher rd = request.getRequestDispatcher("/newGlobal.jsp?language=en");
            rd.forward(request, response);
        } catch (Exception e) {
        }
        return null;
    }

    /**
     * Descriptoin:在未使用language=fr和language=en作为访问参数的情况时调用这个方法
     */
    @Override
    protected ActionForward unspecified(ActionMapping mapping, ActionForm form,
                                        HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try {
            // forward到中文页面
            RequestDispatcher rd = request.getRequestDispatcher("/newGlobal.jsp?language=zh");
            rd.forward(request, response);
        } catch (Exception e) {
        }
        return null;
    }
}