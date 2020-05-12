package com.daowen.action;  
import java.io.File;  
import java.io.UnsupportedEncodingException;  
  
import java.io.IOException;  
  
import java.io.PrintWriter;  
  
import java.util.Iterator;  
  
import java.util.List;  
  
   
  
import javax.servlet.ServletException;  
  
import javax.servlet.http.HttpServlet;  
  
  
   
  
import org.apache.commons.fileupload.FileItem;  
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  
import org.apache.struts2.ServletActionContext;
  
  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import com.daowen.util.SingleFileUpload;  
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class UploadAction extends  ActionSupport {  
      
    private static final long   serialVersionUID = 1L;  
  
      
  
    private static final String CONTENT_TYPE= "text/html; charset=utf-8";  
  
      
    public String execute() {  
          
    	HttpServletResponse response = (HttpServletResponse)ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_RESPONSE);
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_REQUEST);   
        SingleFileUpload upload = new SingleFileUpload();  
        try {  
            upload.parseRequest(request);  
        } catch (UnsupportedEncodingException e1) {  
              
            e1.printStackTrace();  
        } 
       
        
        String temp =ServletActionContext.getServletContext().getRealPath("/") + "upload\\temp\\"; //��ʱĿ¼    
        
        System.out.print("�ϴ�·����"+temp);
        
        String loadpath = ServletActionContext.getServletContext().getRealPath("/") + "upload\\"; //�ϴ��ļ����Ŀ¼    
        
        
        File file = new File(temp);    
        
        if(!file.exists())
        	file.mkdirs();
          
        try {  
            upload.upload(file); 
            
            response.getWriter().write(upload.getFileItem().getName());
        }  
        catch(org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException e){              
            // �ļ���С�������ֵ   
            e.printStackTrace();  
        }catch (Exception e){  
            e.printStackTrace();  
        }  
          
          
        return null;  
    }  
      
   
   
  
} 