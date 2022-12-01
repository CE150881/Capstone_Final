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
public class Test {
    private int TestID;
    private String Name;
    private int TagID;
    private int LevelID;
    
    public Test(){}

    public Test(int TestID, String Name, int TagID, int LevelID) {
        this.TestID = TestID;
        this.Name = Name;
        this.TagID = TagID;
        this.LevelID = LevelID;
    }

    public int getTestID() {
        return TestID;
    }

    public void setTestID(int TestID) {
        this.TestID = TestID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
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

    @Override
    public String toString() {
        return "Test{" + "TestID=" + TestID + ", Name=" + Name + ", TagID=" + TagID + ", LevelID=" + LevelID + '}';
    }

    
}
