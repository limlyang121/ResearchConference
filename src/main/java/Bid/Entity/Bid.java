package Bid.Entity;
import java.sql.SQLException;
import java.util.List;

import Bid.DAO.*;


public class Bid{
    private int bid_id;
    private int paper_id;
    private int reviewer_id;
    private String allocateStatus;
    private BidDAO dao;
    
    
    public Bid(){
        dao = new BidDAO();
    }
    
    
    public List<Bid> getAllBid(){
        return dao.getAllBid();
    }
    
    
    
    public Bid(int bid_id, int paper_id, int reviewer_id) {
        super();
        this.bid_id = bid_id;
        this.paper_id = paper_id;
        this.reviewer_id = reviewer_id;
        dao = new BidDAO();
    }


    public Bid(int bid_id, int paper_id, int reviewer_id, String status ) {
        super();
        this.bid_id = bid_id;
        this.paper_id = paper_id;
        this.reviewer_id = reviewer_id;
        this.allocateStatus = status;
        dao = new BidDAO();
    }
    
    
    




    public String getAllocateStatus() {
        return allocateStatus;
    }


    public void setAllocateStatus(String allocateStatus) {
        this.allocateStatus = allocateStatus;
    }


    public boolean bidPaper(int paper_id, int reviewer_id)throws SQLException {
        return dao.bidPaper(paper_id, reviewer_id);
    }


    public int getBid_id() {
        return bid_id;
    }


    public void setBid_id(int bid_id) {
        this.bid_id = bid_id;
    }


    public int getPaper_id() {
        return paper_id;
    }


    public void setPaper_id(int paper_id) {
        this.paper_id = paper_id;
    }


    public int getReviewer_id() {
        return reviewer_id;
    }


    public void setReviewer_id(int reviewer_id) {
        this.reviewer_id = reviewer_id;
    }


    public BidDAO getDao() {
        return dao;
    }


    public void setDao(BidDAO dao) {
        this.dao = dao;
    }
    
    
    
    
}