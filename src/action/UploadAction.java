package action;

import javax.servlet.http.*;

import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

import java.io.*;

import actionform.*;

/**
 * Description:上传action
 *
 * @author litianxiang
 * @date 2019/3/28
 */
public class UploadAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        UploadForm uForm = (UploadForm) form;
        PrintWriter out = null;
        try {
            response.setCharacterEncoding("GBK");
            out = response.getWriter();
            // 将上传文件保存到指写的路径（在web.xml中配置）
            String uploadFilePath = this.saveFile(uForm.getMyFile(), request);
            out.println("上传文件成功." + uploadFilePath);
        } catch (Exception e) {
            out.println(e.getMessage());
        }
        return null;
    }

    protected String saveFile(FormFile formFile, HttpServletRequest request) throws Exception {
        // 从web.xml文件中获得指定的上传路径
        String path = super.getServlet().getServletContext().getRealPath("/")
                + super.getServlet().getServletConfig().getInitParameter("uploadPath");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        // 获得上传文件的InputStream
        InputStream in = formFile.getInputStream();
        // 在服务端指定的上传路径中建立一个空的文件（文件名为getFileName()方法返回的值）
        FileOutputStream fout = new FileOutputStream(path + formFile.getFileName());
        byte[] buffer = new byte[8192];
        int count = 0;
        //  开始向上传路径中刚建立的文件写入数据，每次写8k字节
        while ((count = in.read(buffer)) > 0) {
            fout.write(buffer, 0, count);
        }
        fout.close();
        formFile.destroy();   // 上传成功后，销毁当前上传文件的资源
        return request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + request.getContextPath() + super.getServlet().getServletConfig().getInitParameter("uploadPath")
                + formFile.getFileName();
    }
}
