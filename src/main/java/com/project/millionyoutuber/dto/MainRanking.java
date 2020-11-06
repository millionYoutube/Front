package com.project.millionyoutuber.dto;

public class MainRanking {
	private String mainRankProfile; //프로필사진
	private String mainRankName; //채널이름
	private String mainRankGenre; //장르
	private String mainRankSubscribers; //구독자수
	private String mainRankVideo; //메인 동영상
	
	public MainRanking() {}
	
	public MainRanking(String mainRankProfile, String mainRankName, String mainRankGenre,
			String mainRankSubscribers, String mainRankVideo) {
		setMainRankProfile(mainRankProfile);
		setMainRankName(mainRankName);
		setMainRankGenre(mainRankGenre);
		setMainRankSubscribers(mainRankSubscribers);
		setMainRankVideo(mainRankVideo);
	}

	public String getMainRankProfile() {
		return mainRankProfile;
	}

	public void setMainRankProfile(String mainRankProfile) {
		this.mainRankProfile = mainRankProfile;
	}

	public String getMainRankName() {
		return mainRankName;
	}

	public void setMainRankName(String mainRankName) {
		this.mainRankName = mainRankName;
	}

	public String getMainRankGenre() {
		return mainRankGenre;
	}

	public void setMainRankGenre(String mainRankGenre) {
		this.mainRankGenre = mainRankGenre;
	}

	public String getMainRankSubscribers() {
		return mainRankSubscribers;
	}

	public void setMainRankSubscribers(String mainRankSubscribers) {
		this.mainRankSubscribers = mainRankSubscribers;
	}

	public String getMainRankVideo() {
		return mainRankVideo;
	}

	public void setMainRankVideo(String mainRankVideo) {
		this.mainRankVideo = mainRankVideo;
	}

	@Override
	public String toString() {
		return "MainRanking [mainRankProfile=" + mainRankProfile + ", mainRankName="
				+ mainRankName + ", mainRankGenre=" + mainRankGenre + ", mainRankSubscribers=" + mainRankSubscribers
				+ ", mainRankVideo=" + mainRankVideo + "]";
	}
}
