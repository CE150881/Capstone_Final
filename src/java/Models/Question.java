/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author ACER
 */
public class Question {
    private int QuestionID;
    private int TagID;
    private int LevelID;
    private String Question;
    
    public Question(){}

    public Question(int QuestionID, int TagID, int LevelID, String Question) {
        this.QuestionID = QuestionID;
        this.TagID = TagID;
        this.LevelID = LevelID;
        this.Question = Question;
    }

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int QuestionID) {
        this.QuestionID = QuestionID;
    }

    public int getTagID() {
        return TagID;
    }

    public void setTagID(int TagID) {
        this.TagID = TagID;
    }

    public int getLevelID() {
        return LevelID;
    }

    public void setLevelID(int LevelID) {
        this.LevelID = LevelID;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String Question) {
        this.Question = Question;
    }

    @Override
    public String toString() {
        return "Questions{" + "QuestionID=" + QuestionID + ", TagID=" + TagID + ", LevelID=" + LevelID + ", Question=" + Question + '}';
    }

    
}
