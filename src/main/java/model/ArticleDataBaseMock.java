package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ArticleDataBaseMock {
    private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
    private static final LocalDateTime now = LocalDateTime.now();
    private static final String formatDateTime = now.format(formatter);

    private static Article[] articles = new Article[]{
            new Article("Tytul 1", formatDateTime, "123","blablalba","/static/img/panda.jpg"),
            new Article("Tytul 2", formatDateTime, "222","blablalba","/static/img/panda.jpg"),
            new Article("Tytul 3", formatDateTime, "333","blablalba","/static/img/panda.jpg"),
            new Article("Slonie222", formatDateTime, "animal222","ispies2.jpg","/static/img/panda.jpg"),
            new Article("Slonie333", formatDateTime,"animal333","ispies3.jpg","/static/img/panda.jpg"),
            new Article("Slonie444", formatDateTime,"animal444","ispies4.jpg","/static/img/panda.jpg"),
            new Article("Slonie555", formatDateTime,"animal555","ispies5.jpg","/static/img/panda.jpg"),
            new Article("Slonie666", formatDateTime,"animal666","ispies6.jpg","/static/img/panda.jpg"),
            new Article("Slonie777", formatDateTime,"animal77","ispies7.jpg","/static/img/panda.jpg")
    };

    public static Article[] getArticles() {
        return articles;
    }
}
