package msk.cloud.web.toolFun;

import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.parser.PdfReaderContentParser;
import com.itextpdf.text.pdf.parser.SimpleTextExtractionStrategy;
import com.itextpdf.text.pdf.parser.TextExtractionStrategy;




/**
 * 
 * <p>Title: 文件处理工具</p>
 * <p>Description: 求上传文件的页数，以及各项信息</p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-13
 *
 */

public class FileTool {

	public static final String RESULT  = "C:/Users/MSK/Downloads/剑指offer---高清版.pdf";
	
	public String paserPDFFileByIText(String filePath) throws Exception {  
        TextExtractionStrategy strategy = null;  
          
        PdfReader reader = new PdfReader(filePath);  
        PdfReaderContentParser parser = new PdfReaderContentParser(reader);  
        StringBuffer buffer = new StringBuffer();  
          
        for (int i = 1; i <= reader.getNumberOfPages(); i++) {  
            strategy = parser.processContent(i, new SimpleTextExtractionStrategy());  
            buffer.append(strategy.getResultantText());  
        }  
        
        return buffer.toString();  
    }  
	/**
	 * 求文档总页数
	 * @param filePath
	 * @return
	 * @throws Exception
	 */
	public static int getFilePages(String filePath) throws Exception{
	    TextExtractionStrategy strategy = null;       
        PdfReader reader = new PdfReader(filePath);  
        int a = reader.getNumberOfPages();
        reader.close();
		return a;
		
	}
	public static void main(String[] args) throws Exception {
		FileTool fileTool = new FileTool();
//		String ss = fileTool.paserPDFFileByIText(RESULT);
//		System.out.println(ss);
		System.out.println(getFilePages("D:/app/Tomcat 7.0/webapps/CloudPrinting1.0/upload/准考证_410329199508031518)_苗世科.pdf"));
		
	}

}