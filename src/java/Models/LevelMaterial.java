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
public class LevelMaterial {

    private String level;

    @Override
    public String toString() {
        return "level{" + "level=" + level + '}';
    }

    public LevelMaterial() {

    }

    public LevelMaterial(String level) {
        this.level = level;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
