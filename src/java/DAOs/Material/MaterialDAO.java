/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Material;

import Connection.DBConnection;
import Models.Alphabet;
import Models.Grammar;
import Models.Kanji;
import Models.Level;
import Models.LevelMaterial;
import Models.Type;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ACER
 */
public class MaterialDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // get all level
    public List<LevelMaterial> getAllLevel() {
        List<LevelMaterial> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from level");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new LevelMaterial(
                            resultSet.getString(1)
                    ));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    // get all type
    public List<Type> getAllType() {
        List<Type> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from type");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Type(
                            resultSet.getString(1)
                    ));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    // get alphabet by type
    public List<Alphabet> getAlphabetByType(String type) {
        List<Alphabet> list = new ArrayList<>();
        String query = "SELECT * FROM alphabet WHERE type = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, type);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Alphabet(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    // get kanji by level
    public List<Kanji> getKanjiByLevel(String level) {
        List<Kanji> list = new ArrayList<>();
        String query = "SELECT * FROM kanji WHERE level = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, level);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Kanji(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    // get grammar by level
    public List<Grammar> getGrammarByLevel(String level) {
        List<Grammar> list = new ArrayList<>();
        String query = "SELECT * FROM grammar WHERE level = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, level);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Grammar(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    // get alphabet by alphabetID
    public Alphabet getAlphabetByAlphabetID(String alphabetID) {
        String query = "SELECT * FROM alphabet WHERE alphabetID = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, alphabetID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Alphabet(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get grammar by grammarID
    public Grammar getGrammarByGrammarID(String grammarID) {
        String query = "SELECT * FROM grammar WHERE grammarID = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, grammarID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Grammar(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get grammar by grammarID
    public Kanji getKanjiByKanjiID(String kanjiID) {
        String query = "SELECT * FROM kanji WHERE kanjiID = ?";
        try {
            conn = new DBConnection().getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, kanjiID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Kanji(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get all kanji
    public List<Kanji> getAllKanji() {
        List<Kanji> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from kanji");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Kanji(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5)
                    ));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    // get all kanji
    public List<Grammar> getAllGrammar() {
        List<Grammar> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from grammar");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Grammar(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4),
                            resultSet.getString(5),
                            resultSet.getString(6),
                            resultSet.getString(7),
                            resultSet.getString(8)
                    ));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    // get all alphabet
    public List<Alphabet> getAllAlphabet() {
        List<Alphabet> list = new ArrayList<>();
        ResultSet resultSet = DBConnection.querySet("select * from alphabet");
        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    list.add(new Alphabet(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getString(4)
                    ));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    //create new alphabet
    public void addAlphabet(String type, String alphabet, String pronounce) {
        String query = "INSERT INTO `alphabet`(`type`, `alphabet`, `pronounce`) VALUES (?,?,?)";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);

            ps.setString(1, type);
            ps.setString(2, alphabet);
            ps.setString(3, pronounce);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //create new grammar
    public void addGrammar(String level, String structure, String use, String example1, String exampleM1, String example2, String exampleM2) {
        String query = "INSERT INTO `grammar`(`level`, `structure`, `use`, `example1`, `exampleM1`, `example2`, `exampleM2`) VALUES (?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, level);
            ps.setString(2, structure);
            ps.setString(3, use);
            ps.setString(4, example1);
            ps.setString(5, exampleM1);
            ps.setString(6, example2);
            ps.setString(7, exampleM2);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    //create new kanji
    public void addKanji(String level, String kanji, String meaning, String picture) {
        String query = "INSERT INTO `kanji`(`level`, `kanji`, `meaning`, `picture`) VALUES (?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, level);
            ps.setString(2, kanji);
            ps.setString(3, meaning);
            ps.setString(4, picture);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // delete alphabet
    public void deleteAlphabet(int alphabetID) {
        String query = "DELETE FROM alphabet WHERE `alphabet`.`alphabetID` = ?";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, alphabetID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // delete kanji
    public void deleteKanji(int kanjiID) {
        String query = "DELETE FROM kanji WHERE `kanji`.`kanjiID` = ?";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, kanjiID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // delete grammar
    public void deleteGrammar(int grammarID) {
        String query = "DELETE FROM grammar WHERE `grammar`.`grammarID` = ?";
        try {
            conn = new DBConnection().getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, grammarID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Alphabet updateAlphabet(String type, String alphabet, String pronounce, String alphabetID) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            String sql = "UPDATE alphabet "
                    + "SET type = ?, alphabet = ?, pronounce = ?"
                    + "WHERE alphabet.`alphabetID` = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ps.setString(2, alphabet);
            ps.setString(3, pronounce);
            ps.setString(4, alphabetID);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return null;
    }

    public Grammar updateGrammar(String level, String structure, String use, String example1, String exampleM1, String example2, String exampleM2, String grammarID) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();
            String sql = "UPDATE `grammar` "
                    + "SET `level`= ?,`structure`= ?,`use`= ?,`example1`= ?,`exampleM1`= ?,`example2`= ?,`exampleM2`= ? "
                    + "WHERE grammar.`grammarID`= ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, level);
            ps.setString(2, structure);
            ps.setString(3, use);
            ps.setString(4, example1);
            ps.setString(5, exampleM1);
            ps.setString(6, example2);
            ps.setString(7, exampleM2);
            ps.setString(8, grammarID);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return null;
    }

    public Kanji updateKanji(String level, String kanji, String meaning, String kanjiID) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();
            String sql = "UPDATE kanji "
                    + "SET level = ?, kanji = ?, meaning = ?"
                    + "WHERE kanji.`kanjiID` = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, level);
            ps.setString(2, kanji);
            ps.setString(3, meaning);
            ps.setString(4, kanjiID);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return null;
    }

    public Kanji updateKanjiPicture(String picture, String kanjiID) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();
            String sql = "UPDATE kanji "
                    + "SET picture = ?"
                    + "WHERE kanji.`kanjiID` = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, picture);
            ps.setString(2, kanjiID);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println("1");
        MaterialDAO dao = new MaterialDAO();
        System.out.println(dao.getGrammarByLevel("N1"));
        System.out.println("2");
    }
}
