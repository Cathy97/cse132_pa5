<html>

<body>
<h2>Decision Support1</h2>
<table>
    <tr>
        <td valign="top">
            <%-- -------- Include menu HTML code -------- --%>
            <jsp:include page="/view_menu.html" />
        </td>
        <td>
            <%-- Import the java.sql package --%>
            <%@ page import="java.sql.*"%>
            <%-- -------- Open Connection Code -------- --%>
            <%

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                // Load Oracle Driver class file
                    Class.forName("org.postgresql.Driver");
                    String dbURL = "jdbc:postgresql:cse132b?user=postgres&password=admin";
                    conn = DriverManager.getConnection(dbURL);

            %>

            <%
                String action = request.getParameter("action");
                // Check if an insertion is requested
                if (action != null && (action.equals("show_decision1"))) {
                if (action.equals("show_decision1")) {

                    // Begin transaction
                    conn.setAutoCommit(false);

                    // Create the prepared statement and use it to
                    pstmt = conn
                    .prepareStatement("SELECT c.grade, c.g_cnt FROM CPQG AS c WHERE c.course_id = ? AND c.year = ? AND c.quarter = ? AND c.fac_id = ?");

                    pstmt.setInt(1, Integer.parseInt(request.getParameter("course_id")));
                    pstmt.setInt(2, Integer.parseInt(request.getParameter("year")));
                    pstmt.setString(3, request.getParameter("quarter"));
                    pstmt.setInt(4, Integer.parseInt(request.getParameter("fac_id")));

                    rs = pstmt.executeQuery();

                    // Commit transaction
                    conn.commit();
                    conn.setAutoCommit(true);
                }

                    %>
                    <table border="1">
                        <tr>
                        <th>Grade </th>
                        <th>Count </th>
                        </tr>
                        <%
                            // Iterate over the ResultSet
                            while (rs.next()) {
                        %>
                        <tr>
                            <td>
                                <%=rs.getString("grade")%>
                            </td>
                            <td>
                                <%=rs.getInt("g_cnt")%>
                            </td>
                        </tr>
                    <%
                        }
                    %>
                    </table>
            <%
                }
                %>

            <hr>
            <form action="decision_support1.jsp" method="POST">
            <table border="1">
            <tr>
            <th>Course Id</th>
            <th>Faculty Id</th>
            <th>Year</th>
            <th>Quarter</th>
            <th></th>
            </tr>
            <tr>
            <input type="hidden" name="action" value="show_decision1"/>
            <!-- Add an HTML table header row to format the results -->
            <td><input value="" name="course_id" size="10"/></td>
            <td><input value="" name="fac_id" size="10"/></td>
            <td><input value="" name="year" size="10"/></td>
            <td><select name="quarter">
                <option value="WINTER">WINTER</option>
                <option value="SPRING">SPRING</option>
                <option value="SUMMER">SUMMER</option>
                <option value="FALL">FALL</option>
            </select></td>
            <td><input type="submit" value="Submit"/></td>
            </tr>
            </table>
            </form>

            <%-- -------- Close Connection Code -------- --%>
            <%
                // Close the ResultSet
                if (rs != null) {
                    rs.close();
                }

                // Close the Statement
//                statement.close();

                // Close the Connection
                conn.close();
            } catch (SQLException e) {

                // Wrap the SQL exception in a runtime exception to propagate
                // it upwards
                throw new RuntimeException(e);
            }
            finally {
                // Release resources in a finally block in reverse-order of
                // their creation

                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException e) { } // Ignore
                    rs = null;
                }
                if (pstmt != null) {
                    try {
                        pstmt.close();
                    } catch (SQLException e) { } // Ignore
                    pstmt = null;
                }
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) { } // Ignore
                    conn = null;
                }
            }
            %>
        </td>
    </tr>
</table>
</body>

</html>
