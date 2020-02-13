<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!doctype html>
<html lang="ko" class="blue-theme">
<head>
</head>
<body>
			<p class="h3" align="center">나의 결제내역</p>
			<br>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">주문번호</th>
						<th scope="col">주문일자</th>
						<th scope="col">주문금액</th>
						<th scope="col">주문수량</th>
						<th scope="col">주문 및 배송상태</th>
					</tr>
				</thead>
				<tbody>
					<%-- <%
						// 1. JDBC 드라이버 로딩
						Class.forName("oracle.jdbc.driver.OracleDriver");

						Connection conn = null; // DBMS와 Java연결객체
						Statement stmt = null; // SQL구문을 실행
						ResultSet rs = null; // SQL구문의 실행결과를 저장

						try {
							String jdbcDriver = "jdbc:oracle:thin:@데이터베이스 주소:1521:ORCL";
							String dbUser = "데이터베이스 ID";
							String dbPass = "데이터베이스 Password";

							String query = "select * from member order by memberid";

							// 2. 데이터베이스 커넥션 생성
							conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

							// 3. Statement 생성
							stmt = conn.createStatement();

							// 4. 쿼리 실행
							rs = stmt.executeQuery(query);

							// 5. 쿼리 실행 결과 출력
							while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString("ord_no")%></td>
						<td><%=rs.getString("ord_date")%></td>
						<td><%=rs.getString("ord_point")%></td>
						<td><%=rs.getString("order_cnt")%></td>
						<td><%=rs.getString("ord_stat_cd")%></td>
					</tr>
					<%
						}
						} catch (SQLException ex) {
							out.println(ex.getMessage());
							ex.printStackTrace();
						} finally {
							// 6. 사용한 Statement 종료
							if (rs != null)
								try {
									rs.close();
								} catch (SQLException ex) {
								}
							if (stmt != null)
								try {
									stmt.close();
								} catch (SQLException ex) {
								}

							// 7. 커넥션 종료
							if (conn != null)
								try {
									conn.close();
								} catch (SQLException ex) {
								}
						}
					%> --%>
				</tbody>
			</table>
			<!-- paginatnion -->
			<nav aria-label="Page navigation example" class="text-center">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>
			</body>
</html>
