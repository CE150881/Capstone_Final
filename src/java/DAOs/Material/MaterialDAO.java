/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs.Material;

import Connection.DBConnection;
import DAOs.Chat.ChatMessageDAO;
import Models.Alphabet;
import Models.ExampleGrammar;
import Models.Grammar;
import Models.GrammarHistory;
import Models.Kanji;
import Models.Level;
import Models.Type;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author ACER
 */
public class MaterialDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;

    // get all level
    public List<Level> getAllLevel() {
        try {
            List<Level> list = new ArrayList<>();
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("select * from level");
            ResultSet resultSet = st.executeQuery();
            if (resultSet != null) {
                try {
                    while (resultSet.next()) {
                        list.add(new Level(
                                resultSet.getInt(1),
                                resultSet.getString(2)
                        ));
                    }
                } catch (Exception e) {
                }
            }
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChatMessageDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return null;
    }

    // get all type
    public List<Type> getAllType() {
        try {
            List<Type> list = new ArrayList<>();
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("select * from type");
            ResultSet resultSet = st.executeQuery();
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
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChatMessageDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return null;
    }

    // get alphabet by type
    public List<Alphabet> getAlphabetByType(String type) {
        List<Alphabet> list = new ArrayList<>();
        String query = "SELECT * FROM alphabet WHERE type = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
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
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // get kanji by level ID
    public List<Kanji> getKanjiByLevelID(String levelID) {
        List<Kanji> list = new ArrayList<>();
        String query = "SELECT * FROM kanji WHERE levelID = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, levelID);
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
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // get grammar by level ID
    public List<Grammar> getGrammarByLevelID(String levelID) {
        List<Grammar> list = new ArrayList<>();
        String query = "SELECT * FROM grammar WHERE levelID = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, levelID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Grammar(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                ));
            }
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // get alphabet by alphabetID
    public Alphabet getAlphabetByAlphabetID(String alphabetID) {
        String query = "SELECT * FROM alphabet WHERE alphabetID = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, alphabetID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Alphabet ap = new Alphabet(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                conn.close();
                return ap;
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get grammar by grammarID
    public Grammar getGrammarByGrammarID(String grammarID) {
        String query = "SELECT * FROM grammar WHERE grammarID = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, grammarID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Grammar gm = new Grammar(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                conn.close();
                return gm;
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get grammar by grammarID
    public Kanji getKanjiByKanjiID(String kanjiID) {
        String query = "SELECT * FROM kanji WHERE kanjiID = ?";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, kanjiID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Kanji kj = new Kanji(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
                conn.close();
                return kj;
            }
        } catch (Exception e) {
        }
        return null;
    }

    // get all kanji
    public List<Kanji> getAllKanji() {
        try {
            List<Kanji> list = new ArrayList<>();
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("select * from kanji");
            ResultSet resultSet = st.executeQuery();
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
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChatMessageDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return null;
    }

    // get all kanji
    public List<Grammar> getAllGrammar() {
        try {
            List<Grammar> list = new ArrayList<>();
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("select * from grammar");
            ResultSet resultSet = st.executeQuery();
            if (resultSet != null) {
                try {
                    while (resultSet.next()) {
                        list.add(new Grammar(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getString(3),
                                resultSet.getString(4)
                        ));
                    }
                } catch (Exception e) {
                }
            }
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChatMessageDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return null;
    }

    // get all alphabet
    public List<Alphabet> getAllAlphabet() {
        try {
            List<Alphabet> list = new ArrayList<>();
            Connection conn = DBConnection.getConnection();
            PreparedStatement st = conn.prepareStatement("select * from alphabet");
            ResultSet resultSet = st.executeQuery();
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
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChatMessageDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        return null;
    }

    //create new alphabet
    public void addAlphabet(String type, String alphabet, String pronounce) {
        String query = "INSERT INTO `alphabet`(`type`, `alphabet`, `pronounce`) VALUES (?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);

            ps.setString(1, type);
            ps.setString(2, alphabet);
            ps.setString(3, pronounce);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    //create new grammar
    public void addGrammar(String levelID, String structure, String use) {
        String query = "INSERT INTO `grammar`(`levelID`, `structure`, `use`) VALUES (?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();        // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, levelID);
            ps.setString(2, structure);
            ps.setString(3, use);

            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
    }

    //create new kanji
    public void addKanji(String levelID, String kanji, String meaning, String picture) {
        String query = "INSERT INTO `kanji`(`levelID`, `kanji`, `meaning`, `picture`) VALUES (?,?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();        // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, levelID);
            ps.setString(2, kanji);
            ps.setString(3, meaning);
            ps.setString(4, picture);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    // delete alphabet
    public void deleteAlphabet(int alphabetID) {
        String query = "DELETE FROM alphabet WHERE `alphabet`.`alphabetID` = ?";
        try {
            Connection conn = DBConnection.getConnection();        // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, alphabetID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    // delete kanji
    public void deleteKanji(int kanjiID) {
        String query = "DELETE FROM kanji WHERE `kanji`.`kanjiID` = ?";
        try {
            Connection conn = DBConnection.getConnection();        // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, kanjiID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    // delete grammar
    public void deleteGrammar(int grammarID) {
        String query = "DELETE FROM grammar WHERE `grammar`.`grammarID` = ?";
        try {
            Connection conn = DBConnection.getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, grammarID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public Alphabet updateAlphabet(String type, String alphabet, String pronounce, String alphabetID) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnection.getConnection(); 
            String sql = "UPDATE alphabet "
                    + "SET type = ?, alphabet = ?, pronounce = ?"
                    + "WHERE alphabet.`alphabetID` = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, type);
            ps.setString(2, alphabet);
            ps.setString(3, pronounce);
            ps.setString(4, alphabetID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
        return null;
    }

    public Grammar updateGrammar(String level, String structure, String use, String grammarID) {
        PreparedStatement ps = null;

        try {
            Connection conn = DBConnection.getConnection(); 
            String sql = "UPDATE `grammar` "
                    + "SET `level`= ?,`structure`= ?,`use`= ? "
                    + "WHERE grammar.`grammarID`= ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, level);
            ps.setString(2, structure);
            ps.setString(3, use);
            ps.setString(4, grammarID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
        return null;
    }

    public Kanji updateKanji(String level, String kanji, String meaning, String kanjiID) {
        PreparedStatement ps = null;

        try {
            Connection conn = DBConnection.getConnection(); 
            String sql = "UPDATE kanji "
                    + "SET level = ?, kanji = ?, meaning = ?"
                    + "WHERE kanji.`kanjiID` = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, level);
            ps.setString(2, kanji);
            ps.setString(3, meaning);
            ps.setString(4, kanjiID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
        return null;
    }

    public Kanji updateKanjiPicture(String picture, String kanjiID) {
        PreparedStatement ps = null;

        try {
            Connection conn = DBConnection.getConnection(); 
            String sql = "UPDATE kanji "
                    + "SET picture = ?"
                    + "WHERE kanji.`kanjiID` = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, picture);
            ps.setString(2, kanjiID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
        return null;
    }

    // get example by grammarID
    public List<ExampleGrammar> getExampleByGrammarID(String grammarID) {
        List<ExampleGrammar> list = new ArrayList<>();
        String query = "SELECT * FROM exampleGrammar WHERE grammarID = ?";
        try {
            Connection conn = DBConnection.getConnection();  // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, grammarID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ExampleGrammar(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4)
                ));
            }
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //create new example grammar
    public void addExampleGrammar(String grammarID, String exJ, String exV) {
        String query = "INSERT INTO `exampleGrammar`(`grammarID`, `exJ`, `exV`) VALUES (?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, grammarID);
            ps.setString(2, exJ);
            ps.setString(3, exV);

            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
    }

    // delete example grammar
    public void deleteExample(String exampleID) {
        String query = "DELETE FROM exampleGrammar WHERE `exampleGrammar`.`exampleID` = ?";
        try {
            Connection conn = DBConnection.getConnection();       // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, exampleID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    //get example grammar by exampleID
    public ExampleGrammar getExampleByExampleID(String exampleID) {
        String query = "SELECT * FROM `examplegrammar` WHERE `exampleID`=?";
        try {
            Connection conn = DBConnection.getConnection();  // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, exampleID);
            rs = ps.executeQuery();
            while (rs.next()) {
                ExampleGrammar eg = new ExampleGrammar(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                conn.close();
                return eg;
            }
        } catch (Exception e) {
        }
        return null;
    }

    // update example
    public ExampleGrammar updateExample(String exJ, String exV, String exampleID) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "UPDATE exampleGrammar "
                    + "SET exJ = ?, exV = ?"
                    + "WHERE exampleGrammar.`exampleID` = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, exJ);
            ps.setString(2, exV);
            ps.setString(3, exampleID);

            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
        return null;
    }

    // grammar history   
    public List<GrammarHistory> getGrammarHistory(String levelID, int userID) {
        List<GrammarHistory> list = new ArrayList<>();
        String query = "SELECT * FROM `grammar` LEFT JOIN `grammarhistory` ON `grammar`.`grammarID` = `grammarhistory`.`grammarID` WHERE `grammar`.`levelID` = ? AND (`grammarhistory`.`userID` = ? OR `grammarhistory`.`userID` IS NULL);";
        try {
            Connection conn = DBConnection.getConnection(); // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setString(1, levelID);
            ps.setInt(2, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GrammarHistory(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7)
                ));
            }
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // add grammar history 
    public void addGrammarHistory(int userID, String grammarID) {
        String query = "INSERT INTO `grammarhistory` (`userID`, `grammarID`, `grammarHistoryStatus`) VALUES (?, ?, 'Đã Học');";
        try {
            Connection conn = DBConnection.getConnection();     // call function form DBconnection
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setString(2, grammarID);
            ps.executeUpdate();
            conn.close();
        } catch (Exception e) {

        }
    }
//
//    // kanji history   
//    public List<GrammarHistory> getGrammarHistory(String levelID, int userID) {
//        List<GrammarHistory> list = new ArrayList<>();
//        String query = "SELECT * FROM `grammar` LEFT JOIN `grammarhistory` ON `grammar`.`grammarID` = `grammarhistory`.`grammarID` WHERE `grammar`.`levelID` = ? AND (`grammarhistory`.`userID` = ? OR `grammarhistory`.`userID` IS NULL);";
//        try {
//            conn = new DBConnection().getConnection(); // call function form DBconnection
//            ps = conn.prepareStatement(query);
//            ps.setString(1, levelID);
//            ps.setInt(2, userID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new GrammarHistory(
//                        rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getInt(5),
//                        rs.getString(7)
//                ));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
//
//    // add kanji history 
//    public void addGrammarHistory(int userID, String grammarID) {
//        String query = "INSERT INTO `grammarhistory` (`userID`, `grammarID`, `grammarHistoryStatus`) VALUES (?, ?, 'Đã Học');";
//        try {
//            conn = new DBConnection().getConnection();       // call function form DBconnection
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, userID);
//            ps.setString(2, grammarID);
//            ps.executeUpdate();
//        } catch (Exception e) {
//
//        }
//    }

    public static void main(String[] args) {
        System.out.println("1");
        MaterialDAO dao = new MaterialDAO();
        dao.addKanji("1", "g", "h", "f");
        System.out.println("2");
    }
}
