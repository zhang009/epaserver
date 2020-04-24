package com.zzti.epa.utils;

import com.deepoove.poi.XWPFTemplate;
import com.zzti.epa.model.pojo.TempTestPaper;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ClassUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @ClassName DocUtil
 * @Description 导出word模板
 * @Author Administrator
 * @Date 2020-04-21 17:06
 **/
public class DocUtil {
    public static ResponseEntity<byte[]> download(HttpServletRequest request, HttpServletResponse response, String newWordName, TempTestPaper tempTestPaper) {
        ClassPathResource classPathResource = new ClassPathResource("wordTemplate/testPaper_template.docx");
        String path = ClassUtils.getDefaultClassLoader().getResource("").getPath();

        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        HttpHeaders headers = new HttpHeaders();
        try {
            XWPFTemplate template = XWPFTemplate.compile(classPathResource.getInputStream()).render(tempTestPaper);//使用poi-tl将对象数据传给word模板
            OutputStream out = null;
            out = new FileOutputStream("out_template.docx");
            template.write(out);
            out.flush();
            out.close();

            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.setContentDispositionFormData("attachment", new String("新建下载试卷.docx".getBytes("UTF-8"), "ISO-8859-1"));
            template.write(bos);
            template.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<byte[]>(bos.toByteArray(), headers, HttpStatus.CREATED);

       /* InputStream fis = null;
        OutputStream toClient = null;
        File file = new File("out_template.docx");
        try {
            fis = new BufferedInputStream(new FileInputStream(file));
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            response.reset();
            // 设置response的Header
            newWordName = URLEncoder.encode(newWordName, "utf-8"); //这里要用URLEncoder转下才能正确显示中文名称
            response.addHeader("Content-Disposition", "attachment;filename=" + newWordName + "");
            response.addHeader("Content-Length", "" + file.length());
            toClient = new BufferedOutputStream(response.getOutputStream());
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>");
            response.setContentType("application/octet-stream");//二进制流
            toClient.write(buffer);
            toClient.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (toClient != null) {
                    toClient.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }*/

    }
    public static ResponseEntity<byte[]> download2(HttpServletRequest request, HttpServletResponse response, String newWordName, TempTestPaper tempTestPaper) {
        ClassPathResource classPathResource = new ClassPathResource("wordTemplate/testPaper_template2.docx");
        String path = ClassUtils.getDefaultClassLoader().getResource("").getPath();

        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        HttpHeaders headers = new HttpHeaders();
        try {
            XWPFTemplate template = XWPFTemplate.compile(classPathResource.getInputStream()).render(tempTestPaper);//使用poi-tl将对象数据传给word模板
            OutputStream out = null;
            out = new FileOutputStream("out_template.docx");
            template.write(out);
            out.flush();
            out.close();

            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.setContentDispositionFormData("attachment", new String("新建下载试卷.docx".getBytes("UTF-8"), "ISO-8859-1"));
            template.write(bos);
            template.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<byte[]>(bos.toByteArray(), headers, HttpStatus.CREATED);

       /* InputStream fis = null;
        OutputStream toClient = null;
        File file = new File("out_template.docx");
        try {
            fis = new BufferedInputStream(new FileInputStream(file));
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            response.reset();
            // 设置response的Header
            newWordName = URLEncoder.encode(newWordName, "utf-8"); //这里要用URLEncoder转下才能正确显示中文名称
            response.addHeader("Content-Disposition", "attachment;filename=" + newWordName + "");
            response.addHeader("Content-Length", "" + file.length());
            toClient = new BufferedOutputStream(response.getOutputStream());
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>");
            response.setContentType("application/octet-stream");//二进制流
            toClient.write(buffer);
            toClient.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (toClient != null) {
                    toClient.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }*/

    }

}
