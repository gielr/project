package utilities;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ArticleDataBaseMock {
    private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
    private static final LocalDateTime now = LocalDateTime.now();
    private static final String formatDateTime = now.format(formatter);

    private static Article[] articles = new Article[]{
            new Article("Tytul 1", formatDateTime, "kategoria1", "a", "/static/img/panda.jpg"),
            new Article("Tytul 2", formatDateTime, "kategoria2", "bla", "/static/img/panda.jpg"),
            new Article("Tytul 3", formatDateTime, "kategoria2", "blabla", "/static/img/panda.jpg"),
            new Article("Tytul 4", formatDateTime, "kategoria2", "blablalba", "/static/img/panda.jpg"),
            new Article("Tytul 5", formatDateTime, "kategoria2", "blablalbabla", "/static/img/panda.jpg"),
            new Article("Tytul 6", formatDateTime, "kategoria3", "blablalbablabla", "/static/img/panda.jpg"),
            new Article("Tytul 7", formatDateTime, "kategoria1", "blablalbablablabla", "/static/img/panda.jpg"),
            new Article("Tytul 8", formatDateTime, "kategoria1", "blablalbablablablabla", "/static/img/panda.jpg"),
            new Article("Tytul 9", formatDateTime, "kategoria3", "blablalbablablablablabla", "/static/img/panda.jpg")
    };

    public static Article[] getArticles() {
        return articles;
    }
}
