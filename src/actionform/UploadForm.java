package actionform;

import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

/**
 * Description:上传
 *
 * @author litianxiang
 * @date 2019/3/28
 */
public class UploadForm extends ActionForm {
    /**
     * Description:这个myFile代表要上传的文件
     */
    private FormFile myFile;

    public FormFile getMyFile() {
        return myFile;
    }

    public void setMyFile(FormFile myFile) {
        this.myFile = myFile;
    }
}