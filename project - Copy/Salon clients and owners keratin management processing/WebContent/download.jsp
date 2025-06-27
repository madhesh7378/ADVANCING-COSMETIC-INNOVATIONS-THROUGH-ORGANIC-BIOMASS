<%@page import="org.apache.poi.hwpf.usermodel.TableCell"%>
<%@page import="com.itextpdf.text.Font.FontFamily"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.awt.Window"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import="org.apache.pdfbox.pdmodel.PDDocument"%>
<%@ page import="org.apache.pdfbox.pdmodel.PDPage"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Download</title>
</head>
<body>
<%

try {
	Connection conn = Dbconn.getconnection();
	 HttpSession s = request.getSession();
	    String mail = (String) s.getAttribute("mailid");
	    String batch = (String) s.getAttribute("batch");
String qry1 = "select * from hair_dataset where id='"+mail+"'";
PreparedStatement ps1 = conn.prepareStatement(qry1);
ResultSet rs1 = ps1.executeQuery();
String qry2 = "select * from accepted_report where batch='"+batch+"'";
PreparedStatement ps2 = conn.prepareStatement(qry2);
ResultSet rs2 = ps2.executeQuery();
String qry3 = "select * from melanin_report where batch='"+batch+"'";
PreparedStatement ps3 = conn.prepareStatement(qry3);
ResultSet rs3 = ps3.executeQuery();
String qry4= "select * from kertain_report where batch='"+batch+"'";
PreparedStatement ps4 = conn.prepareStatement(qry4);
ResultSet rs4 = ps4.executeQuery();
Document document = new Document();
ServletContext context = getServletContext();
String dirName =context.getRealPath("\\reportmail");
String fname="\\"+batch+"-"+mail+".pdf";
String test=dirName+"\\"+batch+"-"+mail+".pdf";
PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(test));
document.open();
float fntSize, lineSpacing;
fntSize = 15.0f;
lineSpacing = 40f;
Paragraph p = new Paragraph(new Phrase(lineSpacing,"TOTAL REPORT FOR "+batch,FontFactory.getFont(FontFactory.COURIER, fntSize)));
p.setAlignment(Element.ALIGN_CENTER);
p.setAlignment(Element.ALIGN_CENTER);
p.setLeading(0,1);
document.add(p);
document.add(Chunk.NEWLINE);
document.add(new Paragraph(" "));
document.add(new Paragraph(" "));
document.add(new Paragraph(" "));
Paragraph p1 = new Paragraph(new Phrase(lineSpacing,"SALOON REPORT for "+batch,FontFactory.getFont(FontFactory.COURIER, fntSize)));
p1.setAlignment(Element.ALIGN_CENTER);
p1.setAlignment(Element.ALIGN_CENTER);
p1.setLeading(0,1);
document.add(p1);
document.add(Chunk.NEWLINE);
Font font = new Font(FontFamily.HELVETICA, 10);
PdfPTable table = new PdfPTable(7);
table.setWidthPercentage(110);
table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
table.getDefaultCell().setFixedHeight(70);
table.addCell(new PdfPCell(new Phrase("MONTH",font)));
table.addCell(new PdfPCell(new Phrase("TOTAL KG",font)));
table.addCell(new PdfPCell(new Phrase("HAIR TYPE",font)));
table.addCell(new PdfPCell(new Phrase("COLOUR",font)));
table.addCell(new PdfPCell(new Phrase("CONDITION",font)));
table.addCell(new PdfPCell(new Phrase("SERVICE TYPE",font)));
table.addCell(new PdfPCell(new Phrase("BATCH",font)));
while (rs1.next()) {
    String a1 = rs1.getString(2);
    String a2 = rs1.getString(3);
    String a3 = rs1.getString(4);
    String a5 = rs1.getString(5);
    String a6 = rs1.getString(7);
    String a8=rs1.getString(8);
    String a9 = rs1.getString(9);
    table.addCell(new PdfPCell(new Phrase(a1,font)));
    table.addCell(new PdfPCell(new Phrase(a2,font)));
    table.addCell(new PdfPCell(new Phrase(a3,font)));
    table.addCell(new PdfPCell(new Phrase(a5,font)));
    table.addCell(new PdfPCell(new Phrase(a6,font)));
    table.addCell(new PdfPCell(new Phrase(a8,font)));
    table.addCell(new PdfPCell(new Phrase(a9,font)));
}
document.add(table); 
document.add(new Paragraph(" "));
document.add(new Paragraph(" "));
Paragraph p2 = new Paragraph(new Phrase(lineSpacing,"ACCEPTED COLLECTION REPORT FOR "+batch,FontFactory.getFont(FontFactory.COURIER, fntSize)));
p2.setAlignment(Element.ALIGN_CENTER);
p2.setAlignment(Element.ALIGN_CENTER);
p2.setLeading(0,1);
document.add(p2);
document.add(Chunk.NEWLINE);
PdfPTable table1 = new PdfPTable(5);
table1.setWidthPercentage(110);
table1.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
table1.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
table1.getDefaultCell().setFixedHeight(70);
table1.addCell(new PdfPCell(new Phrase("TOTAL KG",font)));
table1.addCell(new PdfPCell(new Phrase("TOTAL MELANINE",font)));
table1.addCell(new PdfPCell(new Phrase("TOTAL KERTAIN",font)));
table1.addCell(new PdfPCell(new Phrase("BATCH",font)));
table1.addCell(new PdfPCell(new Phrase("STATUS",font)));
while (rs2.next()) {
	String a1 = rs2.getString(2);
	String a2 = rs2.getString(3);
    String a3 = rs2.getString(4);
    String a4 = rs2.getString(5);
    String a5 = rs2.getString(6);
    table1.addCell(new PdfPCell(new Phrase(a1,font)));
    table1.addCell(new PdfPCell(new Phrase(a2,font)));
    table1.addCell(new PdfPCell(new Phrase(a3,font)));
    table1.addCell(new PdfPCell(new Phrase(a4,font)));
    table1.addCell(new PdfPCell(new Phrase(a5,font)));
}
document.add(table1);
document.add(new Paragraph(" "));
document.add(new Paragraph(" "));
Paragraph p3 = new Paragraph(new Phrase(lineSpacing,"MELANINE REPORT FOR "+batch,FontFactory.getFont(FontFactory.COURIER, fntSize)));
p3.setAlignment(Element.ALIGN_CENTER);
p3.setAlignment(Element.ALIGN_CENTER);
p3.setLeading(0,1);
document.add(p3);
document.add(Chunk.NEWLINE);
PdfPTable table2 = new PdfPTable(6);
table2.setWidthPercentage(110);
table2.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
table2.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
table2.getDefaultCell().setFixedHeight(70);
table2.addCell(new PdfPCell(new Phrase("MELANINE IONIC AMOUNT",font)));
table2.addCell(new PdfPCell(new Phrase("MOLECULAR WEIGHT",font)));
table2.addCell(new PdfPCell(new Phrase("TEMPERATURE",font)));
table2.addCell(new PdfPCell(new Phrase("APPERANCE",font)));
table2.addCell(new PdfPCell(new Phrase("RESULT",font)));
table2.addCell(new PdfPCell(new Phrase("FORMULA NAME",font)));
while (rs3.next()) {
    String a1 = rs3.getString(2);
    String a2 = rs3.getString(3);
    String a3 = rs3.getString(4);
    String a4 = rs3.getString(5);
    String a5 = rs3.getString(6);
    String a6 = rs3.getString(7);
    table2.addCell(new PdfPCell(new Phrase(a1,font)));
    table2.addCell(new PdfPCell(new Phrase(a2,font)));
    table2.addCell(new PdfPCell(new Phrase(a3,font)));
    table2.addCell(new PdfPCell(new Phrase(a4,font)));
    table2.addCell(new PdfPCell(new Phrase(a5,font)));
    table2.addCell(new PdfPCell(new Phrase(a6,font))); 
}
document.add(table2);
document.add(new Paragraph(" "));
document.add(new Paragraph(" "));
Paragraph p4 = new Paragraph(new Phrase(lineSpacing,"KERTAIN REPORT FOR "+batch,FontFactory.getFont(FontFactory.COURIER, fntSize)));
p2.setAlignment(Element.ALIGN_CENTER);
p2.setAlignment(Element.ALIGN_CENTER);
p2.setLeading(0,1);
document.add(p4);
document.add(Chunk.NEWLINE);
PdfPTable table3 = new PdfPTable(7);
table3.setWidthPercentage(110);
table3.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
table3.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
table3.getDefaultCell().setFixedHeight(70);
table3.addCell(new PdfPCell(new Phrase("INITIAL PROTEIN",font)));
table3.addCell(new PdfPCell(new Phrase("TEMPERATURE",font)));
table3.addCell(new PdfPCell(new Phrase("REMAINING PROTEIN",font)));
table3.addCell(new PdfPCell(new Phrase("SOLUBLITY",font)));
table3.addCell(new PdfPCell(new Phrase("APPERANCE",font)));
table3.addCell(new PdfPCell(new Phrase("RESULT",font)));
table3.addCell(new PdfPCell(new Phrase("FORMULA NAME",font)));
while (rs4.next()) {
	String a4 = rs4.getString(2);
	String a5 = rs4.getString(3);
    String a1 = rs4.getString(4);
    String a2 = rs4.getString(5);
    String a3 = rs4.getString(6);
    String a6 = rs4.getString(7);
    String a7 = rs4.getString(8);
    table3.addCell(new PdfPCell(new Phrase(a4,font)));
    table3.addCell(new PdfPCell(new Phrase(a5,font)));
    table3.addCell(new PdfPCell(new Phrase(a1,font)));
    table3.addCell(new PdfPCell(new Phrase(a2,font)));
    table3.addCell(new PdfPCell(new Phrase(a3,font)));
    table3.addCell(new PdfPCell(new Phrase(a6,font)));
    table3.addCell(new PdfPCell(new Phrase(a7,font)));
}
document.add(table3);
document.close();
response.sendRedirect("reportdownload.jsp");
}catch(DocumentException e1) {
	e1.printStackTrace();
}catch (FileNotFoundException e2) {
	  e2.printStackTrace();  
}

%>
</body>
</html>