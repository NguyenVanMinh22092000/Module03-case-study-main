package com.codegym.model.service;

import com.codegym.model.dto.ComputerDto;
import com.codegym.model.entity.Computer;

import java.sql.SQLException;
import java.util.List;

public interface ComputerService {
    boolean insertComputer(ComputerDto computer) throws SQLException;
    List<ComputerDto> listAllComputers() throws SQLException;
    boolean deleteComputer(int id) throws SQLException;
    void updateComputer(int id, ComputerDto computer) throws SQLException;
    ComputerDto getComputer(int id) throws SQLException;
}
