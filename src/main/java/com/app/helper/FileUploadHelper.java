package com.app.helper;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class FileUploadHelper {

	public final String UPLOAD_DIR = "C:\\Users\\91774\\Desktop\\RTO Docs";
	
	public boolean uploadFile(MultipartFile file) {
		boolean f = false;
		
		try {
			Files.copy(file.getInputStream(), Paths.get(UPLOAD_DIR+File.separator+ file.getOriginalFilename()),StandardCopyOption.REPLACE_EXISTING);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
