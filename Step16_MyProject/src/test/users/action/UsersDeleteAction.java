package test.users.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.controller.Action;
import test.controller.ActionForward;
import test.users.dao.UsersDao;

public class UsersDeleteAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		UsersDao.getInstance().delete(id);
		session.invalidate();
		
		request.setAttribute("id", id);
		
		return new ActionForward("/views/users/private/delete_result.jsp");
	
	}

}
