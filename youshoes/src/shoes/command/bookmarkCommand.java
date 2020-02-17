package shoes.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.common.Command;
import shoes.dao.bookmarkDAO;
import shoes.dto.bookmarkDTO;

public class bookmarkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 테스트 용 
		String id = "1";
		
		bookmarkDAO bookmarkDAO= new bookmarkDAO();
		List<bookmarkDTO> bookmark = bookmarkDAO.bookmarkGet(id);
		
		request.setAttribute("bookmark", bookmark);
		
		return "view/pMem/bookmark.jsp";
	}

}
