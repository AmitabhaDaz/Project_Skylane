<%-- 
    Document   : reportemployees
    Created on : 16 Apr, 2015, 9:20:03 AM
    Author     : Thimmaraju
--%>

<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.pdf.MultiColumnText"%>
<%@page import="com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.html.simpleparser.IncTable"%>
<%@page import="com.itextpdf.text.Header"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.io.*"%>
<%@page import= "java.sql.*"%>
 
<%@page import ="javax.naming.Context"%>
<%@page import= "javax.naming.InitialContext"%>
<%@page import ="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.sql.*"%>
 
<%@page import=" com.itextpdf.text.Anchor"%>
<%@page import ="com.itextpdf.text.BaseColor"%>
<%@page import ="com.itextpdf.text.Chunk"%>
<%@page import ="com.itextpdf.text.Document"%>
<%@page import ="com.itextpdf.text.DocumentException"%>
<%@page import ="com.itextpdf.text.Font"%>
<%@page import ="com.itextpdf.text.Font.FontFamily"%>
<%@page import ="com.itextpdf.text.PageSize"%>
<%@page import ="com.itextpdf.text.Paragraph"%>
<%@page import ="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="com.itextpdf.text.pdf.*"%>
<%@page import ="com.itextpdf.text.pdf.PdfPTable"%>


<%! Connection con=null; 
String un,s,fn;%>    

 
<% //response.setContentType("application/pdf"); 
//OutputStream os=response.getOutputStream();
 
  Document doc = new Document();
  //doc.open();
  //PdfWriter.getInstance(doc,os); 
 try{
	 
	 String tc=request.getParameter("tn");
      Font bfBold12 = new Font(FontFamily.TIMES_ROMAN, 12, Font.BOLD, new BaseColor(1, 1, 1)); 
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
 Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("SELECT * from booking2 where ticketno='"+tc+"'");
  while(rs.next()){
	  un=rs.getString(2);
	  fn=rs.getString(3);
	  s=rs.getString(7);

  }
      response.setContentType("application/pdf"); 
      PdfWriter.getInstance(doc, response.getOutputStream());
    doc.open();  
    
    doc.addCreationDate();
  
  doc.addTitle("Cancellation slip");
  doc.setPageSize(PageSize.LETTER);
    doc.add( new Paragraph("--------------------------------------------------------CANCELLATION SLIP------------------------------------------------"));
          doc.add(new Paragraph("      "));
         float[] columnWidths = {1.5f, 1.5f, 1.5f, 1.5f, 1f, 1.5f, 1.5f};
    
        	 doc.add( new Paragraph("Ticket no:"));
        	 doc.add(new Paragraph(tc));
        	 doc.add( new Paragraph("User name:"));
        	 doc.add(new Paragraph(un));
        	 doc.add( new Paragraph("Flight number:"));
        	 doc.add(new Paragraph(fn));
        	 doc.add( new Paragraph("Seat number:"));
        	 doc.add(new Paragraph(s));
        	 doc.add( new Paragraph("Only 50% of the ammount you have paid will be refunded. Produce the slip at the counter to get back the money."));
             doc.add(new Paragraph("      "));
             doc.add( new Paragraph("--------------------------------------------------------Thank you------------------------------------------------"));
             doc.add(new Paragraph("      "));
         /* PdfPTable table = new PdfPTable(columnWidths);
           table.setWidthPercentage(99f);
           PdfPCell cell1 = new PdfPCell(new Phrase("ticketno",bfBold12));
            cell1.setBorderColor(BaseColor.BLUE);
            cell1.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell1);
            PdfPCell cell2 = new PdfPCell(new Phrase("username",bfBold12));
            cell2.setBorderColor(BaseColor.BLUE);
            cell2.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell2);
            PdfPCell cell3 = new PdfPCell(new Phrase("flightno",bfBold12));
            cell3.setBorderColor(BaseColor.BLUE);
            cell3.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell3);
            PdfPCell cell4 = new PdfPCell(new Phrase("company",bfBold12));
            cell4.setBorderColor(BaseColor.BLUE);
            cell4.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell4);
            PdfPCell cell5 = new PdfPCell(new Phrase("source",bfBold12));
            cell5.setBorderColor(BaseColor.BLUE);
            cell5.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell5);
            PdfPCell cell6 = new PdfPCell(new Phrase("destination",bfBold12));
            cell6.setBorderColor(BaseColor.BLUE);
            cell6.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell6);
            PdfPCell cell7 = new PdfPCell(new Phrase("Seat Number",bfBold12));
            cell7.setBorderColor(BaseColor.BLUE);
            cell7.setBackgroundColor(BaseColor.GRAY);
            table.addCell(cell7);
           
       doc.add(table);
  if(rs.next())
  {
           // doc.add( new Paragraph("Welcome" + rs.getString(1)));
           // doc.add(new Paragraph(rs.getString(2)));
         PdfPTable table1 = new PdfPTable(columnWidths);
          table1.setWidthPercentage(99f);
          table1.addCell(new PdfPCell(new Phrase(rs.getString(1),bfBold12)));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(2))));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(3))));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(4))));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(5))));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(6))));
          table1.addCell(new PdfPCell(new Phrase(rs.getString(7))));
         
            table1.completeRow();

   doc.add(table1);
    */
 // }
    doc.close(); 
 
  }catch(DocumentException e){
   out.print(e);
  }
  catch(Exception k){
  out.print(k);
  }
 
%>	
