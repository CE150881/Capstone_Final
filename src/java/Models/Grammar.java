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

    @Override
    public String toString() {
        return "Grammar{" + "grammarID=" + grammarID + ", level=" + level + ", structure=" + structure + ", use=" + use + '}';
    }

    public Grammar() {

    }

    public Grammar(int grammarID, String level, String structure, String use) {
        this.grammarID = grammarID;
        this.level = level;
        this.structure = structure;
        this.use = use;

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
}
