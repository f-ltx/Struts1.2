# 创建数据库
DROP DATABASE STRUTS;
CREATE DATABASE struts;
# 使用
USE struts;

# 建立数据库struts
CREATE DATABASE IF NOT EXISTS struts
  DEFAULT CHARACTER SET gbk;

# 建立表t_products
CREATE TABLE IF NOT EXISTS struts.t_products (
  product_id   VARCHAR(4)  NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  price        FLOAT       NOT NULL,
  PRIMARY KEY (product_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = gbk;