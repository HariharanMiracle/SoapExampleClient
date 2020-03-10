/**
 * ItemServiceImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.candybar.service;

public interface ItemServiceImpl extends java.rmi.Remote {
    public com.candybar.model.Item getItem(int itemId) throws java.rmi.RemoteException;
    public boolean addItem(com.candybar.model.Item item) throws java.rmi.RemoteException;
    public com.candybar.model.Item[] getAllItems() throws java.rmi.RemoteException;
    public boolean deleteItem(int itemId) throws java.rmi.RemoteException;
}
