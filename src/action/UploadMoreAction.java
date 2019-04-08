package action;

import javax.servlet.http.*;

import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

import java.io.*;

import actionform.*;

/**
 * Description:
 * @author ltx
 * @date 19-4-8
 */
public class UploadMoreAction extends UploadAction {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        UploadMoreForm umForm = (UploadMoreForm) form;
        PrintWriter out = null;
        int count = 0;
        try {
            response.setCharacterEncoding("GBK");
            out = response.getWriter();
            // 获得上传文件的总数
            count = umForm.getFileCount();
            for (int i = 0; i < count; i++) {
                // 开始保存每一个上传文件
                out.println(saveFile(umForm.getFile(i),request));
                out.println("<br>");
            }
            out.println("成功上传" + count + "个文件.");
        } catch (Exception e) {
            out.println(e.getMessage());
        }
        return null;
    }
}