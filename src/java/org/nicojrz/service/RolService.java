/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.nicojrz.service;

import java.io.Serializable;
import org.nicojrz.dao.Rol;

/**
 *
 * @author alumno
 */
public class RolService implements Serializable {
    
    private Rol rol;
    
    public RolService() {
    }
    
    public boolean save(Rol rol) {
        return true;
    }
}
