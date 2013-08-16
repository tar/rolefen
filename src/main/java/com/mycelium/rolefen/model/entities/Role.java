package com.mycelium.rolefen.model.entities;

public enum Role {

    Admin("ROLE_ADMIN"), Ratnik("ROLE_RATNIK"), Friend("ROLE_FRIEND"), Parent("ROLE_PARENT");

    private String _name;
    private String _caption;
    private long _id;

    private Role(String name) {
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

    public static Role valueOf(long roleId) {
        for (Role role : values()) {
            if (role.getId() == roleId) {
                return role;
            }
        }
        return null;
    }

}
