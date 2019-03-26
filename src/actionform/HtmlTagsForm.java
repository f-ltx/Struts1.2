package actionform;

import org.apache.struts.action.*;

/**
 * Description:HtmlTagsForm
 *
 * @author litianxiang
 * @date 2019/3/26
 */
public class HtmlTagsForm extends ActionForm {
    private String name;
    private String sex;
    private Boolean student;
    private String[] hobbies;
    private String work;

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String[] getHobbies() {
        return hobbies;
    }

    public void setHobbies(String[] hobbies) {
        this.hobbies = hobbies;
    }

    public String getName() {
        return name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getStudent() {
        return student;
    }

    public void setStudent(Boolean student) {
        this.student = student;
    }
}
