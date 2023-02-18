package com.codegym.model.dao;

import com.codegym.model.entity.Computer;

import java.sql.SQLException;
import java.util.List;

public interface IComputerDao {
    boolean insertComputer(Computer computer) throws SQLException;
    List<Computer> listAllComputers() throws SQLException;
    boolean deleteComputer(int id) throws SQLException;
    boolean updateComputer(int id, Computer computer) throws SQLException;
    Computer getComputer(int id) throws SQLException;
}
