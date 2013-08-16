package com.mycelium.rolefen.model.entities;

public enum Rank {

    K1("knecht1"),
    k2("knecht2"),
    K3("knecht3"),
    B1("braveman1"),
    B2("braveman2"),
    B3("braveman3"),
    F1("footman1"),
    F2("footman2"),
    F3("footman3");

    private String _name;
    private String _caption;
    private long _id;

    private Rank(String name) {
        _name = name;
    }

    public String getName() {
        return _name;
    }

    public void setName(String name) {
        _name = name;
    }

    public String getCaption() {
        return _caption;
    }

    public void setCaption(String caption) {
        _caption = caption;
    }

    public long getId() {
        return _id;
    }

    public void setId(long id) {
        _id = id;
    }

    public static Rank valueOf(long roleId) {
        for (Rank role : values()) {
            if (role.getId() == roleId) {
                return role;
            }
        }
        return null;
    }

}
