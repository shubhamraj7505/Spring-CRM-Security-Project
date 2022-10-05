DROP DATABASE  IF EXISTS `spring_security_demo_bcrypt`;

CREATE DATABASE  IF NOT EXISTS `spring_security_demo_bcrypt`;
USE `spring_security_demo_bcrypt`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
          `username` varchar(50) NOT NULL,
          `password` char(68) NOT NULL,
          `enabled` tinyint(1) NOT NULL,
          PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- A generation tool is avail at: http://www.luv2code.com/generate-bcrypt-password
--
-- Default passwords here are: cse123
--

INSERT INTO `users` 
VALUES
    ('akash','{bcrypt}$2a$10$xvy1SunNXmMTu/XSloMcUeSV91ayx8n7GUMInjZycUBRMqu5ktN2q',1),
    ('piyush','{bcrypt}$2a$10$xvy1SunNXmMTu/XSloMcUeSV91ayx8n7GUMInjZycUBRMqu5ktN2q',1),
    ('ashish','{bcrypt}$2a$10$xvy1SunNXmMTu/XSloMcUeSV91ayx8n7GUMInjZycUBRMqu5ktN2q',1),
    ('swati','{bcrypt}$2a$10$xvy1SunNXmMTu/XSloMcUeSV91ayx8n7GUMInjZycUBRMqu5ktN2q',1);


--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
    ('akash','ROLE_EMPLOYEE'),
    ('ashish','ROLE_EMPLOYEE'),
    ('ashish','ROLE_MANAGER'),
    ('swati','ROLE_EMPLOYEE'),
    ('swati','ROLE_ADMIN'),
    ('piyush','ROLE_EMPLOYEE'),
    ('piyush','ROLE_OWNER');


