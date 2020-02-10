package shoes.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.command.JoinOkCommand;
import shoes.command.ReviewCommand;
import shoes.command.bookmarkCommand;
import shoes.command.idOverapOkCommand;
import shoes.command.indexCommand;
import shoes.command.joinCommand;
import shoes.command.loginCommand;
import shoes.command.loginOkCommand;
import shoes.command.logoutCommand;
import shoes.command.myReviewCommand;
import shoes.command.pMemEventCommand;
import shoes.command.pointCommand;
import shoes.command.profileUpdateCommand;
import shoes.common.Command;


/**
 * FrontController에서 하는 중요한 역할 2개
 * 1. init()메소드로 초기화 작업(한글처리와 list put)
 * 2. service()메소드로 클라이언트가 요청할 때 마다 해당 path의 controller로 이동시켜주는 길잡이 역할
 * 
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	String charset = null;
	HashMap<String, Command> cont = new HashMap<String, Command>();
	
	
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		
		/* 구매 유저  */
		// 로그인 부분
		cont.put("/index.do", new indexCommand());             // 메인 홈페이지 호출
		cont.put("/login.do", new loginCommand());             // 로그인
		cont.put("/loginOk.do", new loginOkCommand());         // 로그인 체크
		cont.put("/join.do", new joinCommand());               // 회원가입
		cont.put("/JoinOk.do", new JoinOkCommand());           // 회원가입 체크
		cont.put("/idOverapOk.do", new idOverapOkCommand());   // 구매회원 아이디 중복체크
		
		
		// 프로필 부분
		cont.put("/myReview.do", new myReviewCommand());       // 구매 회원이 자기가 작성한 후기 보기
		cont.put("/point.do", new pointCommand());             // 구매 회원 현재 포인트 확인 및 충전
		cont.put("/profileUpdate.do", new profileUpdateCommand());  // 구매 회원 프로필 수정
		cont.put("/pMemEvent.do", new pMemEventCommand());     // 구매 회원 이벤트 목록 보기
		cont.put("/bookmark.do", new bookmarkCommand());       // 구매 회원 즐겨찾기 상품 보기
		cont.put("/logout.do", new logoutCommand());           // 로그아웃
		
		// 구교동가  만들어야할 Command
		cont.put("/Review.do",new ReviewCommand());

		/* 관리자 */
//		cont.put("/myReview.do", new myReviewCommand());       // 판매회원 목록
//		cont.put("/myReview.do", new myReviewCommand());       // 판매회원 등록
//		cont.put("/myReview.do", new myReviewCommand());       // 판매회원 삭제
//		cont.put("/myReview.do", new myReviewCommand());       // 구매회원 목록
//		cont.put("/myReview.do", new myReviewCommand());       // 구매회원 삭제
//		cont.put("/myReview.do", new myReviewCommand());       // 코드ID 목록 확인
//		cont.put("/myReview.do", new myReviewCommand());       // 매출
//		cont.put("/myReview.do", new myReviewCommand());       // 공지사항 목록
//		cont.put("/myReview.do", new myReviewCommand());       // 공지사항 등록
		
		
		/* 판매자 */
		

		
		
		
		
		
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실행할class 객체를 찾아주는 부분, get메소드로
		request.setCharacterEncoding("UTF-8"); // 한글처리
		
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		Command commandImpl = cont.get(path);     // 실행 클래스를 선택한다 
		 
		String page = null;
		
		response.setContentType("text/html; charset=UTF-8");
		
		if(commandImpl!=null) {
			page = commandImpl.execute(request, response);
			
			if(page!=null && !page.isEmpty()) {
				if(page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				}else if(page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				}else if(page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				}else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}else {
				response.getWriter().append("잘못된 요청입니다.");
			}

		}
	}

}
