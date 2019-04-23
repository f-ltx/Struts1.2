# 创建数据库
DROP DATABASE if exists struts;

# 建立数据库struts
CREATE DATABASE IF NOT EXISTS struts
    DEFAULT CHARACTER SET gbk;
# 使用
USE struts;

# 建立表t_products
CREATE TABLE IF NOT EXISTS struts.t_products (
  product_id   VARCHAR(4)  NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  price        FLOAT       NOT NULL,
  PRIMARY KEY (product_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = gbk;

--   增加下载次数表
  use struts;
  CREATE TABLE struts.t_dcount(
  id INT NOT NULL,
  count INT NOT NULL,
  filename VARCHAR( 256 ) NOT NULL,
  PRIMARY KEY (id)
  ) ENGINE = InnoDB  DEFAULT CHARSET=gbk;