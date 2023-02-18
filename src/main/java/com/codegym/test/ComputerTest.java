package com.codegym.test;

import com.codegym.model.dao.ComputerDao;
import com.codegym.model.dto.ComputerDto;
import com.codegym.model.entity.Computer;
import com.codegym.model.service.ComputerService;
import com.codegym.model.service.ComputerServiceImpl;

import java.sql.SQLException;

public class ComputerTest {
    public static void main(String[] args) throws SQLException {
        ComputerServiceImpl computerDao = new ComputerServiceImpl();
        ComputerDao computerDao1 = new ComputerDao();
        computerDao1.updateComputer(5, new Computer("XPhone", 6000F, 6f, "cheapest"));
        for(ComputerDto computer: computerDao.listAllComputers()){
            System.out.println(computer);
        }
        computerDao.getComputer(5);
        System.out.println(computerDao.getComputer(5));
         computerDao.updateComputer(5, new ComputerDto("XPhone", 6000F, 6F, "cheapest"));
//       boolean i = computerDao.insertComputer(new Computer("Window", 4000F, 2.0F, "so cheap so qualified"));
//        System.out.println(i);
    }
}
