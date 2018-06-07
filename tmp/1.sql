CREATE TABLE 'categories' (
    'id' SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    'category' VARCHAR(45) NOT NULL,
    PRIMARY KEY ('id'),
    UNIQUE INDEX 'category_UNIQUE' ('category' ASC)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE 'orders' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT,
    'user_id' INT UNSIGNED NOT NULL,
    'transaction_id' VARCHAR(45) NOT NULL,
    'payment_status' VARCHAR(45) NOT NULL,
    'payment_amount' INT UNSIGNED NOT NULL,
    'date_created' TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ('id'),
    INDEX 'date_created' ('date_created' ASC),
    INDEX 'transaction_id' ('transaction_id' ASC),
    CONSTRAINT 'fk_orders_users1' FOREIGN KEY ('id')
        REFERENCES 'users' ('id')
        ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE 'pages' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT,
    'categories_id' SMALLINT UNSIGNED NOT NULL,
    'title' VARCHAR(150) NOT NULL,
    'description' TINYINT NOT NULL,
    'content' LONGTEXT NULL,
    'date_created' TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ('id'),
    INDEX 'date_created' ('date_created' ASC),
    INDEX 'fk_pages_categories_idx' ('categories_id' ASC),
    CONSTRAINT 'fk_pages_categories' FOREIGN KEY ('categories_id')
        REFERENCES 'categories' ('id')
        ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE 'pdfs' (
    
)