package in.co.tlearn.ctl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * Servlet implementation class FileUploadServlet
 * 
 */


public class FileUploadServlet {
	
	

		    /* Receive file uploaded to the Servlet from the HTML5 form */
		    
		  //  CourseBean be = new CourseBean();
		   // HttpSession session = request.getSession(true);
		  //  CourseBean userdto = (CourseBean) session.getAttribute("user");
		   // UserModelHibImp model1 = (UserModelHibImp) ModelFactory.getInstance().getUserModel();
		     
		  //  model1.findByName(userBean.getTea_uniqueid());
		    
		   // be.setImage_url(image_url);
			//userdto.findByPK(userBean.getTea_uniqueid());
			
			//userdto.getTea_uniqueid( be.setImage(fileName));
		    
		// System.out.println(fileName+"----------------------------------------------");
		   
		// System.out.println(userdto.getId(userdto.setImage(fileName));
		    
		    
		   
		   /* request.setAttribute("hm","file uploaded successfully !!");
		    ServletUtility.forward(ORSView.COURSE_VIEW, request, response);*/
		 
	
	public static boolean deletefile(String path){
		boolean f = false;
		
		try{
			
			File file = new File(path);
			f = file.delete();
					
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public static boolean savefile(InputStream is , String path){
		boolean f = false;
		
		try{
			
			byte b[] = new byte[is.available()];
			
			is.read(b);
			
			FileOutputStream fos = new FileOutputStream(path);
			
			fos.write(b);
			fos.flush();
			fos.close();
			
			f = true;
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return false;
		
		
	}

}