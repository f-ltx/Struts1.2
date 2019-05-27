package action;

import javax.servlet.http.*;

import org.apache.struts.action.*;
import org.apache.struts.actions.*;

import java.io.*;
import java.sql.*;

/**
 * @author litianxiang
 */
public class FileDownloadAction extends DownloadAction {
    private Connection conn;
    private String path;
    private String filename;

    /**
     * Descriptoin:获得了Connection对象
     */
    private void openConnection() {
        try {
            if (conn == null) {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/struts?characterEncoding=GBK&serverTimezone=GMT%2B8",
                        "root", "mysqladmin");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Descriptoin:获得某个文件的下载次数，其中id是文件名的hashcode
     */
    private int getDownloadCount(int id) throws Exception {
        openConnection();
        PreparedStatement pstmt = conn
                .prepareStatement("SELECT count FROM t_dcount WHERE id = " + id);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            return rs.getInt(1);
        }
        return 0;
    }

    /**
     * Descriptoin:在文件完成下载后，将该文件的下载次数加1
     */
    private void incDownloadCount() throws Exception {
        openConnection();
        int id = filename.hashCode();
        PreparedStatement pstmt = conn
                .prepareStatement("UPDATE t_dcount SET count = count + 1 WHERE id = "
                        + id);
        if (pstmt.executeUpdate() == 0) {
            pstmt.executeUpdate("INSERT INTO t_dcount(id, count, filename) values("
                    + id + ",1,'" + filename + "')");
        }
    }

    /**
     * Descriptoin:下载文件时调用getStreamInfo方法
     */
    @Override
    protected StreamInfo getStreamInfo(ActionMapping mapping, ActionForm form,
                                       HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        final FileInputStream fis = new FileInputStream(path + filename);
        final String contentType = "application/file";
        // 建议设置content-disposition响应信息头，否则Web浏览器在下载文件时
        // 无法在保存文件对话框中显示正确的文件名
        response.setHeader("content-disposition", "attachment; filename="
                + filename);
        incDownloadCount();
        // 使用隐式的方法实现了StreamInfo接口
        return new DownloadAction.StreamInfo() {
            @Override
            public String getContentType() {
                return contentType;
            }

            @Override
            public InputStream getInputStream() throws IOException {
                return fis;
            }
        };
    }

    /**
     * Descriptoin:如果Struts动作不加file请求参数，则通过execute方法将指定目录中文件列表输出到客户端
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        path = this.getServlet().getServletContext().getRealPath("/") + this.getServlet().getInitParameter("downloadPath");
        filename = request.getParameter("file");
        if (filename == null) {
            File file = new File(path);
            if (!file.exists()) {
                file.mkdirs();
            }
            File[] files = file.listFiles();
            response.setCharacterEncoding("GBK");
            PrintWriter out = response.getWriter();

            out.println("<ul>");
            // 开始向客户端浏览器输出文件列表
            for (File f : files) {
                if (f.isFile() && !f.isHidden()) {
                    out.println("<li><a href='" + request.getContextPath() + mapping.getPath()
                            + ".do?file=" + f.getName() + "'>" + f.getName()
                            + "</a>&nbsp;&nbsp;<font color='blue'>下载次数："
                            + getDownloadCount(f.getName().hashCode())
                            + "</color></li>");
                }
            }
            out.println("</ul>");
            return null;
        } else {
            // 当file参数存在时，则调用DownloadAction中的execute方法
            // 实际上，在DownloadAction类中的execute方法调用了getStreamInfo方法
            // 这条语句就相当于调用了getStreamInfo方法
            return super.execute(mapping, form, request, response);
        }
    }
}