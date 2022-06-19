/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class Feedback {
    private String feedbackId;
    private String userId;
    private String title;
    private String content;

    public Feedback() {
    }

    public Feedback(String feedbackId, String userId, String title, String content) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.title = title;
        this.content = content;
    }

    public String getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(String feedbackId) {
        this.feedbackId = feedbackId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
}
