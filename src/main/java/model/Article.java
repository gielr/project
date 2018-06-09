package model;

public class Article {
    private String title;
    private String date;
    private String category;
    private String tekst;
    private String imageURL;

    public Article(String title, String date, String kategoria, String tekst, String imageURL) {
        this.title = title;
        this.date = date;
        this.category = kategoria;
        this.tekst = tekst;
        this.imageURL = imageURL;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String kategoria) {
        this.category = kategoria;
    }

    public String getTekst() {
        return tekst;
    }

    public void setTekst(String tekst) {
        this.tekst = tekst;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
}
