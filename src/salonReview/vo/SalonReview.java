package salonReview.vo;

import java.sql.Date;

public class SalonReview {
	private int reserveNo;
	private String salonName;
	private String reviewWriter;
	private int reviewStar;
	private String reviewComment;
	private Date reviewDate;
<<<<<<< HEAD
	private double reviewStars;
=======
>>>>>>> hogilversion0.01
	public SalonReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SalonReview(int reserveNo, String salonName, String reviewWriter, int reviewStar, String reviewComment,
<<<<<<< HEAD
			Date reviewDate,double reviewStars) {
=======
			Date reviewDate) {
>>>>>>> hogilversion0.01
		super();
		this.reserveNo = reserveNo;
		this.salonName = salonName;
		this.reviewWriter = reviewWriter;
		this.reviewStar = reviewStar;
		this.reviewComment = reviewComment;
		this.reviewDate = reviewDate;
<<<<<<< HEAD
		this.reviewStars = reviewStars;
	}
	
	public double getReviewStars() {
		return reviewStars;
	}
	public void setReviewStars(double reviewStars) {
		this.reviewStars = reviewStars;
=======
>>>>>>> hogilversion0.01
	}
	public int getReserveNo() {
		return reserveNo;
	}
	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}
	public String getSalonName() {
		return salonName;
	}
	public void setSalonName(String salonName) {
		this.salonName = salonName;
	}
	public String getReviewWriter() {
		return reviewWriter;
	}
	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}
	public int getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}
	public String getReviewComment() {
		return reviewComment;
	}
	public void setReviewComment(String reviewComment) {
		this.reviewComment = reviewComment;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
<<<<<<< HEAD
	
=======

>>>>>>> hogilversion0.01
}
