package com.atmangxing.atcrowdfunding.potal.service;

import com.atmangxing.atcrowdfunding.bean.Member;
import com.atmangxing.atcrowdfunding.bean.Ticket;

public interface TicketService {

	Ticket getTicketByMemberId(Integer id);

	void saveTicket(Ticket ticket);

	void updatePstep(Ticket ticket);

	void updatePiidAndPstep(Ticket ticket);

	Member getMemberByPiid(String processInstanceId);

	void updateStatus(Member member);

}
