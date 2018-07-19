package com.sample.bank.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;
import com.sample.bank.entity.Transaction;
import com.sample.bank.service.TransactionService;
import com.sample.bank.view.model.TransactionView;

public class TransactionAction implements ModelDriven<TransactionView>, SessionAware {
	
	@Autowired
	private TransactionService svc;
	private Map<String, Object> userSession;
	private TransactionView txnView;
	
	@Override
	public void setSession(Map<String, Object> session) {
		userSession = session;
	}

	@Override
	public TransactionView getModel() {
		txnView = new TransactionView();
		return txnView;
	}
	
	public String execute() {
		return "success";
	}
	
	public String transact(){
		Transaction transaction = new Transaction(txnView.getAmount(),txnView.getType());
		svc.makeTransaction(userSession.get("name").toString(), transaction);
		return "success";
	}
}
