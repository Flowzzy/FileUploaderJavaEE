package com.candidjava.servlet.upload;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class Uploadservlet
 */
public class UploadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final String UPLOAD_DIRECTORY = "C:\\upload";
    
       

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        new File(UPLOAD_DIRECTORY).mkdirs(); // Cria o directorio dos ficheiros .
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                String fname = null;
                String fsize = null;
                String ftype = null;
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        fname = new File(item.getName()).getName();
                        fsize = new Long(item.getSize()).toString();
                        ftype = item.getContentType();
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + fname));
                    }
                }
                
                //File uploaded successfully
                request.setAttribute("message", "Ficheiro Carregado com Sucesso!");
                request.setAttribute("name", fname);
                request.setAttribute("size", fsize);
                request.setAttribute("type", ftype);
            } catch (Exception ex) {
                request.setAttribute("message", "Upload sem sucesso " + ex);
            }

        } else {
            request.setAttribute("message", "So pode ser feito upload de ficheiros");
        }
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
    // TODO Auto-generated method stub
}
