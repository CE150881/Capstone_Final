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
public class Quiz {
    private int QuizID;
    private String Name;
    private int TestID;
    private int QuestionID;
    
    public Quiz(){}

    public Quiz(int QuizID, String Name, int TestID, int QuestionID) {
        this.QuizID = QuizID;
        this.Name = Name;
        this.TestID = TestID;
        this.QuestionID = QuestionID;
    }

    public int getQuizID() {
        return QuizID;
    }

    public void setQuizID(int ID) {
        this.QuizID = QuizID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getTestID() {
        return TestID;
    }

    public void setTestID(int TestID) {
        this.TestID = TestID;
    }

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int QuestionID) {
        this.QuestionID = QuestionID;
    }

    @Override
    public String toString() {
        return "Quiz{" + "QuizID=" + QuizID + ", Name=" + Name + ", TestID=" + TestID + ", QuestionID=" + QuestionID + '}';
    }

    
}
