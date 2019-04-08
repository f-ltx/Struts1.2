package actionform;

import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

import java.util.*;

/**
 * Description:上传多个文件
 *
 * @author ltx
 * @date 19-4-8
 */
public class UploadMoreForm extends ActionForm {
    /**
     * Description:用于保存不定数量的FormFile对象
     */
    private List<FormFile> myFiles = new ArrayList<>();

    /**
     * Description:索引属性
     *
     * @param
     * @return
     * @author ltx
     * @date 19-4-8
     */
    public FormFile getFile(int i) {
        return myFiles.get(i);
    }

    /**
     * Description:索引属性
     *
     * @param
     * @return
     * @author ltx
     * @date 19-4-8
     */
    public void setFile(int i, FormFile myFile) {
        // 只有上传文件的字节数大于0，才上传这个文件
        if (myFile.getFileSize() > 0) {
            myFiles.add(myFile);
        }
    }

    /**
     * Description:// 获得上传文件的个数
     *
     * @param
     * @return
     * @author ltx
     * @date 19-4-8
     */
    public int getFileCount() {
        return myFiles.size();
    }
}