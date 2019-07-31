package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TimesTableServlet extends HttpServlet{
	
	private static final Logger logger = LoggerFactory.getLogger(TimesTableServlet.class);
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// System.out.println("TimesTablesServlet doGet()");
		
		String method = req.getMethod();
		
		logger.trace("trace TimesTableServlet doGet() {} {}", method, method + "test");
		logger.debug("debug TimesTableServlet doGet() {} {}" + method, method + "test");
		logger.info("info TimesTableServlet doGet()");
		logger.warn("warn TimesTableServlet doGet()");
		logger.error("error TimesTableServlet doGet()");
		
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = resp.getWriter();
		pw.write("<html>");
		pw.write("	<head>");
		pw.write("	  <title>helloServlet</title>");
		pw.write("      <style>");
		pw.write("         td{");
//		pw.write("             width : 100px");
		pw.write("             padding : 10px");
		pw.write("         }");
		pw.write("      </style>");
		pw.write("	</head>");
		pw.write(" <body>");
		pw.write("	  <table border='1'>");
		for(int i = 1; i < 10; i++) {
			pw.write("   <tr>");
			for(int j = 2; j < 10; j++) {
				pw.write("<td>"+j+"*"+i+"="+j*i+"</td>");
			}
		}
		pw.write("       </tr>");
		pw.write("     </table>");
		pw.write(" </body>");
		pw.write("</html>");
	}
}
