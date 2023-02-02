-- LOAD DATA INFILE '//home/sugus/Downloads/customers.csv'
-- INTO TABLE customer
-- FIELDS TERMINATED BY ',';

CREATE TABLE customer (
    customer_id VARCHAR(255),	
    FN DECIMAL,
    Active DECIMAL,	
    club_member_status VARCHAR(255),	
    fashion_news_frequency VARCHAR(255),
    age INTEGER,	
    postal_code VARCHAR(255),
    PRIMARY KEY (customer_id)
);

CREATE TABLE article (
    article_id VARCHAR(255),	
    product_code VARCHAR(255),	
    prod_name VARCHAR(255),	
    product_type_no VARCHAR(255),	
    product_type_name VARCHAR(255),
    product_group_name VARCHAR(255),
    graphical_appearance_no VARCHAR(255),	
    graphical_appearance_name VARCHAR(255),
    colour_group_code VARCHAR(255),	
    colour_group_name VARCHAR(255),
    perceived_colour_value_id VARCHAR(255),	
    perceived_colour_value_name VARCHAR(255),
    perceived_colour_master_id VARCHAR(255),
    perceived_colour_master_name VARCHAR(255),
    department_no VARCHAR(255),	
    department_name VARCHAR(255),
    index_code VARCHAR(255),	
    index_name VARCHAR(255),
    index_group_no VARCHAR(255),	
    index_group_name VARCHAR(255),	
    section_no VARCHAR(255),	
    section_name VARCHAR(255),	
    garment_group_no VARCHAR(255),	
    garment_group_name VARCHAR(255),
    detail_desc VARCHAR(2000),
    PRIMARY KEY (article_id)	
);

CREATE TABLE sales_channel (
    sales_channel_id VARCHAR(255),
    channel_desc VARCHAR(255),
    PRIMARY KEY (sales_channel_id)    
);

CREATE TABLE transaction (
    t_dat DATE,	
    customer_id VARCHAR(255),
    article_id VARCHAR(255),
    price DECIMAL,
    sales_channel_id VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (article_id) REFERENCES article(article_id),   
    FOREIGN KEY (sales_channel_id) REFERENCES sales_channel(sales_channel_id)       
);

INSERT INTO sales_channel
VALUES 
    ('1', 'Offline'),
    ('2', 'Online');    
