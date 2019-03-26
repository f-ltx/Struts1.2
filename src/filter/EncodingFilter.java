package filter;

import java.io.IOException;
import javax.servlet.*;

/**
 * Description:编码过滤器
 *
 * @author litianxiang
 * @date 2019/3/22
 */
public class EncodingFilter implements Filter {
    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        // 将客户端提交的数据设为GBK编码格式
        request.setCharacterEncoding("GBK");
        // 继续处理客户端提交的数据，如果不写这条语句，Servlet引擎将不会处理所过滤的页面
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }
}
