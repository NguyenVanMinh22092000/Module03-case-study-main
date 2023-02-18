package com.codegym.model.service;

import com.codegym.model.dao.ComputerDao;
import com.codegym.model.dao.IComputerDao;
import com.codegym.model.dto.ComputerDto;
import com.codegym.model.entity.Computer;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ComputerServiceImpl implements ComputerService {
    private IComputerDao iComputerDao = new ComputerDao();

    @Override
    public boolean insertComputer(ComputerDto computerDto) throws SQLException {
        Computer computer = new Computer(computerDto.getId(), computerDto.getBrand(),computerDto.getPrice(),
                computerDto.getRam(),computerDto.getDetail());
        boolean inserted = iComputerDao.insertComputer(computer);
        return inserted;
    }

    @Override
    public List<ComputerDto> listAllComputers() throws SQLException {
        List<Computer> computerListDao = iComputerDao.listAllComputers();
        List<ComputerDto > computerListDto = new ArrayList<>();

        computerListDao.forEach(computerDao -> computerListDto.add(new ComputerDto(computerDao.getId(),
                computerDao.getBrand(), computerDao.getPrice(), computerDao.getRam(), computerDao.getDetail())));
        return computerListDto;
    }

    @Override
    public boolean deleteComputer(int id) throws SQLException {
        boolean deleted = iComputerDao.deleteComputer(id);
        return deleted;
    }

    @Override
    public void updateComputer(int id, ComputerDto computerDto) throws SQLException {
        Computer computer = iComputerDao.getComputer(id);
        computer.setBrand(computerDto.getBrand());
        computer.setPrice(computerDto.getPrice());
        computer.setRam(computerDto.getRam());
        computer.setDetail(computerDto.getDetail());
        iComputerDao.updateComputer(id, computer);
    }

    @Override
    public ComputerDto getComputer(int id) throws SQLException {
        Computer computer = iComputerDao.getComputer(id);
        ComputerDto computerDto = new ComputerDto(computer.getId(), computer.getBrand(), computer.getPrice(),
                computer.getRam(), computer.getDetail());
        return computerDto;
    }
}
