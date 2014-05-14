package cn.javass.index.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.javass.common.model.AbstractModel;

/**
 * 产品实体类
 * @author wuxiaowei
 * Create on 2014-5-10 下午09:45:33
 */
@Entity
@Table(name = "tbl_product")
public class ProductModel extends AbstractModel {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** 主键 */
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
	private int id;
	
	/** 标题 */
	@Column(name = "title")
	private String title;
	/** 介绍 */
	private String introduce;
	/** 作者 */
	private String author;
	/** 访问数 */
	private int visits;
	/** 顶 */
	private int ding;
	/** 踩 */
	private int cai;
	/** 缩略图 */
	private String imgsrc;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getVisits() {
		return visits;
	}
	public void setVisits(int visits) {
		this.visits = visits;
	}
	public int getDing() {
		return ding;
	}
	public void setDing(int ding) {
		this.ding = ding;
	}
	public int getCai() {
		return cai;
	}
	public void setCai(int cai) {
		this.cai = cai;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + cai;
		result = prime * result + ding;
		result = prime * result + id;
		result = prime * result + ((imgsrc == null) ? 0 : imgsrc.hashCode());
		result = prime * result
				+ ((introduce == null) ? 0 : introduce.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + visits;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductModel other = (ProductModel) obj;
		if (author == null) {
			if (other.author != null)
				return false;
		} else if (!author.equals(other.author))
			return false;
		if (cai != other.cai)
			return false;
		if (ding != other.ding)
			return false;
		if (id != other.id)
			return false;
		if (imgsrc == null) {
			if (other.imgsrc != null)
				return false;
		} else if (!imgsrc.equals(other.imgsrc))
			return false;
		if (introduce == null) {
			if (other.introduce != null)
				return false;
		} else if (!introduce.equals(other.introduce))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (visits != other.visits)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ProductModel [author=" + author + ", cai=" + cai + ", ding="
				+ ding + ", id=" + id + ", imgsrc=" + imgsrc + ", introduce="
				+ introduce + ", title=" + title + ", visits=" + visits + "]";
	}
	
	
}
