/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package komiku;

/**
 *
 * @author Erwin
 */
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.*;

import org.apache.commons.digester.Digester;
import org.apache.commons.collections.*;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.swing.*;
import net.sf.jasperreports.engine.design.JRDesignQuery;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;
import javax.swing.*;
import java.io.*;
public class report {
    public report(String filename, Connection Con) {
        try {
            JasperDesign jasperDesign = new JasperDesign();
            jasperDesign = JRXmlLoader.load(filename);
            Map parameter = new HashMap();
            JRDesignQuery jrq = new JRDesignQuery();  
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);  
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameter,Con);  
            JasperViewer.viewReport(jasperPrint,false); 
        } catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Error " +e);
        }
    }
}
