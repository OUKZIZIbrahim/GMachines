package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.User;
import service.UserService;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Responsive Loginform</title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"l1/style.css\">\n");
      out.write("        <!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .btn-success {\n");
      out.write("    color: #fff;\n");
      out.write("    background-color: #7BB992;\n");
      out.write("    border-color: #15522C;\n");
      out.write("    border-radius: 30px;\n");
      out.write("    margin: auto;\n");
      out.write("    margin-left: 70px;\n");
      out.write("    margin-top: 30px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("        <!-- LOGIN MODULE -->\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <!-- TOGGLE -->\n");
      out.write("                <div id=\"toggle-wrap\">\n");
      out.write("                    <div id=\"toggle-terms\">\n");
      out.write("                        <div id=\"cross\">\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- TERMS -->\n");
      out.write("                <div class=\"terms\">\n");
      out.write("                    <h2>dp Terms of Service</h2>\n");
      out.write("                    <p class=\"small\">Last modified: September 23, 2017</p>\n");
      out.write("                    <h3>Welcome to dp</h3>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- RECOVERY -->\n");
      out.write("                <div class=\"recovery\">\n");
      out.write("                    <h2>Password Recovery</h2>\n");
      out.write("                    <p>Enter either the <strong>email address</strong> or <strong>username</strong> on the account and <strong>click Submit</strong></p>\n");
      out.write("                    <p>We'll email instructions on how to reset your password.</p>\n");
      out.write("                   <!-- <form class=\"recovery-form\" action=\"\" method=\"post\">\n");
      out.write("                        <input type=\"text\" class=\"input\" id=\"user_recover\" placeholder=\"Enter Email or Username Here\">\n");
      out.write("                        <input type=\"submit\" class=\"button\" value=\"Submit\">\n");
      out.write("                    </form>-->\n");
      out.write("                    <p class=\"mssg\">An email has been sent to you with further instructions.</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("                <!-- LOGIN FORM -->\n");
      out.write("                <div class=\"user\">\n");
      out.write("                    <!-- ACTIONS\n");
      out.write("                    <div class=\"actions\">\n");
      out.write("                        <a class=\"help\" href=\"#signup-tab-content\">Sign Up</a><a class=\"faq\" href=\"#login-tab-content\">Login</a>\n");
      out.write("                    </div>\n");
      out.write("                    -->\n");
      out.write("                    <div class=\"form-wrap\">\n");
      out.write("                        <!-- TABS -->\n");
      out.write("                    \t<div class=\"tabs\">\n");
      out.write("                            <h3 class=\"login-tab\"><a class=\"log-in active\" href=\"#login-tab-content\"><span>Login<span></a></h3>\n");
      out.write("                    \t\t<h3 class=\"signup-tab\"><a class=\"sign-up\" href=\"#signup-tab-content\"><span>Sign Up</span></a></h3>\n");
      out.write("                    \t</div>\n");
      out.write("                        <!-- TABS CONTENT -->\n");
      out.write("                    \t<div class=\"tabs-content\">\n");
      out.write("                            <!-- TABS CONTENT LOGIN -->\n");
      out.write("                    \t\t<div id=\"login-tab-content\" class=\"active\">\n");
      out.write("                    \t\t\t<form class=\"login-form\" action=\"LoginController\" method=\"post\">\n");
      out.write("                    \t\t\t\t<input type=\"text\" class=\"input\" name=\"username\"  id=\"user_login\" autocomplete=\"off\" placeholder=\"Email or Username\">\n");
      out.write("                    \t\t\t\t<input type=\"password\" class=\"input\" name=\"pass\" id=\"user_pass\" autocomplete=\"off\" placeholder=\"Password\">\n");
      out.write("                    \t\t\t\t<input type=\"checkbox\" class=\"checkbox\" checked id=\"remember_me\">\n");
      out.write("                    \t\t\t\t<label for=\"remember_me\">Remember me</label>\n");
      out.write("                    \t\t\t\t <button type=\"submit\" class=\"btn btn-success\">Login</button>\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                    \t\t\t</form>\n");
      out.write("                    \t\t\t<div class=\"help-action\">\n");
      out.write("                    \t\t\t\t<p><i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i><a class=\"forgot\" href=\"#\">Forgot your password?</a></p>\n");
      out.write("                    \t\t\t</div>\n");
      out.write("                    \t\t</div>\n");
      out.write("                            <!-- TABS CONTENT SIGNUP -->\n");
      out.write("                    \t\t<div id=\"signup-tab-content\">\n");
      out.write("                    \t\t\t<form class=\"signup-form\" action=\"UserController\" method=\"post\">\n");
      out.write("                                                <input type=\"text\" class=\"input\" id=\"user_name\" autocomplete=\"off\" name=\"nom\" placeholder=\"nom\">\n");
      out.write("                                                <input type=\"text\" class=\"input\" id=\"user_name\" autocomplete=\"off\" name=\"prenom\" placeholder=\"prenom\">\n");
      out.write("                    \t\t\t\t<input type=\"text\" class=\"input\" id=\"user_email\" name=\"username\" autocomplete=\"off\" placeholder=\"Email\">\n");
      out.write("                    \t\t\t\t\n");
      out.write("                    \t\t\t\t<input type=\"password\" class=\"input\" id=\"user_pass\" autocomplete=\"off\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("                                                <input type=\"password\" class=\"input\" id=\"user_pass\" autocomplete=\"off\" name=\"cpass\" placeholder=\"Password\">\n");
      out.write("                    \t\t\t\t <button   id=\"send\" type=\"submit\" value=\"Envoyer\"  class=\"btn btn-success\">Sign up</button>\n");
      out.write("                    \t\t\t</form>\n");
      out.write("                    \t\t\t\n");
      out.write("                    \t\t</div>\n");
      out.write("                    \t</div>\n");
      out.write("                \t</div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"l1/script.js\"></script>\n");
      out.write("<!-- JavaScript Bundle with Popper -->\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
