package model.Categoria;

import model.Prodotto.Prodotto;

import java.util.List;

public class Categoria {
    private int id;
    private String nome;
    private String urlImage;
    private List<Prodotto> prodotti;

    public int getId() {
        return id;
    }

    public void setUrlImage(String url) {
        this.urlImage = url;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Prodotto> getProdotti() {
        return prodotti;
    }

    public void setProdotti(List<Prodotto> prodotti) {
        this.prodotti = prodotti;
    }
}
