package com.project.millionyoutuber.dto;

public class GenreRanking {
	private String genreRankProfile;
	private String genreRankName;
	private String genreRankSubscribers;
	private String genreRankVideo;
	
	public GenreRanking() {}
	public GenreRanking(String genreRankProfile, String genreRankName, String genreRankSubscribers,
			String genreRankVideo) {
		setGenreRankProfile(genreRankProfile);
		setGenreRankName(genreRankName);
		setGenreRankSubscribers(genreRankSubscribers);
		setGenreRankVideo(genreRankVideo);
	}
	public String getGenreRankProfile() {
		return genreRankProfile;
	}
	public void setGenreRankProfile(String genreRankProfile) {
		this.genreRankProfile = genreRankProfile;
	}
	public String getGenreRankName() {
		return genreRankName;
	}
	public void setGenreRankName(String genreRankName) {
		this.genreRankName = genreRankName;
	}
	public String getGenreRankSubscribers() {
		return genreRankSubscribers;
	}
	public void setGenreRankSubscribers(String genreRankSubscribers) {
		this.genreRankSubscribers = genreRankSubscribers;
	}
	public String getGenreRankVideo() {
		return genreRankVideo;
	}
	public void setGenreRankVideo(String genreRankVideo) {
		this.genreRankVideo = genreRankVideo;
	}
	
	@Override
	public String toString() {
		return "GenreRanking [genreRankProfile=" + genreRankProfile
				+ ", genreRankName=" + genreRankName + ", genreRankSubscribers=" + genreRankSubscribers
				+ ", genreRankVideo=" + genreRankVideo + "]";
	}
	
}
