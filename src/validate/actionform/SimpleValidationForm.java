package validate.actionform;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.*;

/**
 * Description:简单验证actionForm
 *
 * @author litianxiang
 * @date 2019/3/26
 */
public class SimpleValidationForm extends ActionForm {
    /**
     * Description:以下四个变量分别对应于simpleValidation.jsp中的四个文本框中的值。
     */
    private String user;
    private String password;
    private String password1;
    private String email;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Description:开始验证用户提交的信息
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors error = new ActionErrors();
        String regex = "\\w+(\\.\\w+)*@\\w+(\\.\\w+)+" ;
        if (user.equals("")) {
            // 必须输入用户名
            error.add("errorUser", new ActionMessage("error.user.blank"));
        }
        if (password.equals("")) {
            // 必须输入密码
            error.add("errorPassword", new ActionMessage("error.password.blank"));
        } else if (!password.equals(password1)) {
            // 两个登录密码必须一致
            error.add("errorPassword1", new ActionMessage("error.password1.confirmation"));
        }
        if (email.equals("")) {
            // 必须输入email
            error.add("errorEmail", new ActionMessage("error.email.blank"));
        } else if (!email.matches(regex)) {
            error.add("errorEmail", new ActionMessage("error.email.invalid"));
        }
        // 返回错误信息，如果error中没有错误信息，
        // 就会调用SimpleValidationAction类的对象实例来执行execute方法。
        return error;
    }
}
