/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import classes.NewHibernateUtil;
import classes.OrganizationMaster;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

/**
 *
 * @author dell
 */
public class EnterpriseAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
             System.out.println("byeee");
             EnterpriseBean eb=(EnterpriseBean)form;
             Session s=NewHibernateUtil.getSessionFactory().openSession();
             //AnnotationConfiguration ac=new AnnotationConfiguration();
             //ac.configure();
             //ac.addAnnotatedClass("OrganisationMaster.class");
             System.out.println("hello");
             //s.createSQLQuery("insert into ")
             //new SchemaExport(ac).create(true,true);
             OrganizationMaster om=new OrganizationMaster();
             om.setOrgId("org010");
             om.setOrgName(eb.getOrgname());
             om.setOrgAdd(eb.getOrgadd());
             om.setState(eb.getState());
             om.setZipcode(eb.getPincode());
             om.setCountry(eb.getCountry());
             om.setPhone1(eb.getPhone1());
             om.setPhone2(eb.getPhone2());
             om.setFax(eb.getFax());
             om.setMail(eb.getEmail());
              s.save(om);
             s.beginTransaction().commit();
             System.out.println("data successfully inserted");
        return mapping.getInputForward();
    }
}
