package actionform;

import org.apache.struts.validator.ValidatorForm;

/**
 * Description:// 必须从ValidatorForm继承
 *
 * @author ltx
 * @date 19-4-9
 */
public class FirstValidatorForm extends ValidatorForm {
    private String name;
    private String age;
    private String email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
}