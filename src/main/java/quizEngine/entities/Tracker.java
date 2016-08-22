package quizEngine.entities;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Superduo on 8/17/16.
 */


@Entity
@Table(name = "tracker")
public class Tracker {

    public long getSessionId() {
        return sessionId;
    }

    public void setSessionId(long sessionId) {
        this.sessionId = sessionId;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long sessionId;

    public int correct = 0;
    public int incorrect =0;


    public int totalQuestions;
    @NotNull
    public String email;
    @NotNull
    public String name;


    public int getTotalQuestions() {
        return totalQuestions;
    }

    public void setTotalQuestions(int totalQuestions) {
        this.totalQuestions = totalQuestions;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCorrect() {
        return correct;
    }

    public void setCorrect(int correct) {
        this.correct = correct;
    }

    public int getIncorrect() {
        return incorrect;
    }

    public void setIncorrect(int incorrect) {
        this.incorrect = incorrect;
    }
}
