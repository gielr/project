package model;

import java.time.LocalDateTime;

public class ArticleDataBaseMock {
    private static Article[] articles = new Article[]{
            new Article("Tytul 1", LocalDateTime.now(), "123","blablalba","www.wp.pl"),
            new Article("Tytul 2", LocalDateTime.now(), "222","blablalba","www.wp.pl"),
            new Article("Tytul 3", LocalDateTime.now(), "333","blablalba","www.wp.pl"),
            new Article("Slonie222", LocalDateTime.now(), "animal222","ispies2.jpg","loreum rmreoewnoi 222222222222"),
            new Article("Slonie333", LocalDateTime.now(),"animal333","ispies3.jpg","loreum rmreoewnoi 13333333333 "),
            new Article("Slonie444", LocalDateTime.now(),"animal444","ispies4.jpg","loreum rmreoewnoi 14444444444"),
            new Article("Slonie555", LocalDateTime.now(),"animal555","ispies5.jpg","loreum rmreoewnoi 5555555555555555 "),
            new Article("Slonie666", LocalDateTime.now(),"animal666","ispies6.jpg","loreum rmreoewnoi 666666666666666666666"),
            new Article("Slonie777", LocalDateTime.now(),"animal77","ispies7.jpg","loreum rmreoewnoi 177777777777777 ")
    };

    public static Article[] getArticles() {
        return articles;
    }
}
