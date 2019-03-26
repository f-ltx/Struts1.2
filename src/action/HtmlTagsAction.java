package action;

import javax.servlet.http.*;

import org.apache.struts.action.*;

import java.io.*;

import actionform.HtmlTagsForm;

/**
 * Description:HtmlTagsAction
 *
 * @author litianxiang
 * @date 2019/3/26
 */
public class HtmlTagsAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
                                 HttpServletResponse response) {
        HtmlTagsForm htForm = (HtmlTagsForm) form;
        try {
            response.setCharacterEncoding("GBK");
            PrintWriter out = response.getWriter();
            out.println("姓名：" + htForm.getName() + "<p/>");
            if (htForm.getSex() != null) {
                out.println("性别：" + (htForm.getSex().equals("1") ? "男" : "女") + "<p/>");
            }
            out.println("学生：" + (htForm.getStudent() == null ? "否" : "是") + "<p/>");
            if (htForm.getHobbies() != null) {
                out.println("爱好：");
                for (String hobby : htForm.getHobbies()) {
                    out.println(hobby + "  ");
                }
                out.println("<p/>");
            }
            if (htForm.getWork() != null) {
                out.println("职业：" + htForm.getWork());
            }
        } catch (Exception e) {
        }
        return null;
    }
}
