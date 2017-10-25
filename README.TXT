This project is 2 things:
1. an (extremely) simple webapp consists of JSPs, designed to be stress tested
2. a JMeter script to test the webapp in #1

The motivation was to test JSP container performance, comparing between development mode (where JSP on-the-fly recompilation is enabled) and production mode.
Reference https://developer.jboss.org/message/977049#977049 .

What is in the webapp?

There are 8 JSPs in total. The main page is testme.jsp, which include the other JSPs.

testme.jsp
| <jsp:include/>
embedded_01.jsp
| <%@include/>
embedded_02.jsp
| <%@include/>
embedded_03.jsp
| <%@include/>   | <%@include/>   | <jsp:include/>   | <jsp:include/>
embedded_04.jsp  embedded_04.jsp   embedded_06.jsp   embedded_07.jsp

Each JSP call a static method in a class which will generate random string, 50 char long, 5 rows.
JSTL foreach is thrown here and there.

There is also 1 jpg image of my beloved DJI Phantom 3 Advanced (which I rarely fly anymore).
This is to serve as a static content.

What is in the JMeter script?

It calls testme.jsp twice and phantom3.jpg once.
By default I set it to run 100 concurrent users and do 100 iteration. In total it requests testme.jsp 20k times and phantom3.jpg 10k times.
