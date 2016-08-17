package quizEngine.entities;

/**
 * Created by Superduo on 8/17/16.
 */
public class QuizResults {
    int wrong = 0;
    int correct = 0;
    int totalQuestions = 39;

    public int getTotalQuestions() {
        return totalQuestions;
    }

    public void setTotalQuestions(int totalQuestions) {
        this.totalQuestions = totalQuestions;
    }

    public int getWrong() {
        return wrong;
    }

    public void setWrong(int wrong) {
        this.wrong = wrong;
    }

    public int getCorrect() {
        return correct;
    }

    public void setCorrect(int correct) {
        correct = correct;
    }
}
