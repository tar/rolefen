package com.mycelium.rolefen.model.entities;

import java.util.Date;

public class TeamEntity implements Entity {

    private long _id;
    private String _caption;
    private String _description;
    private String _email;
    private String _phone;
    private String _address;
    private boolean _active;
    private String _logoPath;
    private Date _registrationDate;
    private long _masterId;
    
    public TeamEntity(){
    }

    public TeamEntity(String caption, String description, String email, String phone, String address, boolean active,
            String logoPath, Date registrationDate, long masterId) {
        super();
        _caption = caption;
        _description = description;
        _email = email;
        _phone = phone;
        _address = address;
        _active = active;
        _logoPath = logoPath;
        _registrationDate = registrationDate;
        _masterId = masterId;
    }

    public String getCaption() {
        return _caption;
    }

    public void setCaption(String caption) {
        _caption = caption;
    }

    public String getDescription() {
        return _description;
    }

    public void setDescription(String description) {
        _description = description;
    }

    public String getEmail() {
        return _email;
    }

    public void setEmail(String email) {
        _email = email;
    }

    public String getPhone() {
        return _phone;
    }

    public void setPhone(String phone) {
        _phone = phone;
    }

    public String getAddress() {
        return _address;
    }

    public void setAddress(String address) {
        _address = address;
    }

    public boolean isActive() {
        return _active;
    }

    public void setActive(boolean active) {
        _active = active;
    }

    public String getLogoPath() {
        return _logoPath;
    }

    public void setLogoPath(String logoPath) {
        _logoPath = logoPath;
    }

    public Date getRegistrationDate() {
        return _registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        _registrationDate = registrationDate;
    }

    public long getMasterId() {
        return _masterId;
    }

    public void setMasterId(long masterId) {
        _masterId = masterId;
    }

    @Override
    public long getId() {
        return _id;
    }

    @Override
    public void setId(long id) {
        _id = id;
    }

}
