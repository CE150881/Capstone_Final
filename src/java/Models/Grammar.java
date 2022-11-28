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
public class Grammar {

    private int grammarID;
    private String level;
    private String structure;
    private String use;
    private String example1;
    private String exampleM1;
    private String example2;
    private String exampleM2;

    @Override
    public String toString() {
        return "grammar{" + "grammarID=" + grammarID + ", level=" + level + ", structure=" + structure + ", use=" + use + ", example1=" + example1 + ", exampleM1=" + exampleM1 + ", example2=" + example2 + ", exampleM2=" + exampleM2 + '}';
    }

    public Grammar() {

    }

    public Grammar(int grammarID, String level, String structure, String use, String example1, String exampleM1, String example2, String exampleM2) {
        this.grammarID = grammarID;
        this.level = level;
        this.structure = structure;
        this.use = use;
        this.example1 = example1;
        this.exampleM1 = exampleM1;
        this.example2 = example2;
        this.exampleM2 = exampleM2;
    }

    public int getGrammarID() {
        return grammarID;
    }

    public void setGrammarID(int grammarID) {
        this.grammarID = grammarID;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public String getExample1() {
        return example1;
    }

    public void setExample1(String example1) {
        this.example1 = example1;
    }

    public String getExampleM1() {
        return exampleM1;
    }

    public void setExampleM1(String exampleM1) {
        this.exampleM1 = exampleM1;
    }

    public String getExample2() {
        return example2;
    }

    public void setExample2(String example2) {
        this.example2 = example2;
    }

    public String getExampleM2() {
        return exampleM2;
    }

    public void setExampleM2(String exampleM2) {
        this.exampleM2 = exampleM2;
    }

}
