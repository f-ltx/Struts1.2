package action;

import org.apache.struts.action.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Description:动态form
 *
 * @author ltx
 * @date 19-4-10
 */
public class DynamicAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        try {
            DynaActionForm dForm = (DynaActionForm) form;
            String name = (String) dForm.get("name");
            Short age = (Short) dForm.get("age");
            Float salary = (Float) dForm.get("salary");
            // 获得数组类型字段值的数组长度
            int hobbyCount = ((String[]) dForm.get("hobby")).length;
            PrintWriter out = response.getWriter();
            out.println("name: " + name + "<p/>");
            out.println("age: " + age + "<p/>");
            out.println("salary: " + salary + "<p/>");
            for (int i = 0; i < hobbyCount; i++) {
                out.println("hobby" + (i + 1) + ": " + dForm.get("hobby", i) + "<p/>");
            }
            Map map = (Map) dForm.get("hello");
            Set<Map.Entry<String, String>> set = map.entrySet();
            Iterator<Map.Entry<String, String>> iterator = set.iterator();
            while (iterator.hasNext()) {
                Map.Entry<String, String> entry = iterator.next();
                out.println("map - hello key =" + entry.getKey() + ", map - hello value =" + entry.getValue() + "<p/>");
            }
        } catch (Exception e) {
        }
        return null;
    }
}