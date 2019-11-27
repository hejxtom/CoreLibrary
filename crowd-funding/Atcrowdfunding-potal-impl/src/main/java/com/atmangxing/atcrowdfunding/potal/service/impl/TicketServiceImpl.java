package com.atmangxing.atcrowdfunding.potal.service.impl;

import com.atmangxing.atcrowdfunding.potal.dao.TicketMapper;
import com.atmangxing.atcrowdfunding.potal.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Member;
import com.atmangxing.atcrowdfunding.bean.Ticket;

@Service
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketMapper ticketMapper ;

	public Ticket getTicketByMemberId(Integer id) {
		return ticketMapper.getTicketByMemberId(id);
	}

	public void saveTicket(Ticket ticket) {
		ticketMapper.saveTicket(ticket);
	}

	public void updatePstep(Ticket ticket) {
		ticketMapper.updatePstep(ticket);
	}

	public void updatePiidAndPstep(Ticket ticket) {
		ticketMapper.updatePiidAndPstep(ticket);
	}

	public Member getMemberByPiid(String processInstanceId) {
		return ticketMapper.getMemberByPiid(processInstanceId);
	}

	public void updateStatus(Member member) {
		ticketMapper.updateStatus(member);
	}
	
}
