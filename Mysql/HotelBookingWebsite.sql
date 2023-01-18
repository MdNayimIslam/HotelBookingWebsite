CREATE DATABASE HotelBookingWebsite;

CREATE TABLE admin_cred (
    sr_no INT AUTO_INCREMENT,
    admin_name VARCHAR(200) NOT NULL,
    admin_pass VARCHAR(200) NOT NULL,
    PRIMARY KEY (sr_no)
);

INSERT INTO `admin_cred`(`admin_name`, `admin_pass`) VALUES ('admin','admin');

CREATE TABLE settings (
    sr_no INT AUTO_INCREMENT,
    site_title VARCHAR(200) NOT NULL,
    site_about VARCHAR(500) NOT NULL,
    shutdown BOOLEAN DEFAULT '0' NOT NULL,
    PRIMARY KEY (sr_no)
);

INSERT INTO `settings`(`site_title`, `site_about`) VALUES ('Nhotel','site_about Nhotel site_about Nhotel site_about Nhotel');

CREATE TABLE contact_details (
    sr_no INT AUTO_INCREMENT,
    address VARCHAR(500) NOT NULL,
    gmap VARCHAR(500) NOT NULL,
    pn1 BIGINT NOT NULL,
    pn2 BIGINT NOT NULL,
    email VARCHAR(200) NOT NULL,
    fb VARCHAR(200) NOT NULL,
    insta VARCHAR(200) NOT NULL,
    tw VARCHAR(200) NOT NULL,
    iframe VARCHAR(500) NOT NULL,
    PRIMARY KEY (sr_no)
);

CREATE TABLE team_details (
    sr_no INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture VARCHAR(500) NOT NULL,
    PRIMARY KEY (sr_no)
);

CREATE TABLE carousel (
    sr_no INT AUTO_INCREMENT,
    image VARCHAR(500) NOT NULL,
    PRIMARY KEY (sr_no)
);

CREATE TABLE user_queries (
    sr_no INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    subject VARCHAR(200) NOT NULL,
    message VARCHAR(500) NOT NULL,
    date DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    seen TINYINT DEFAULT '0' NOT NULL,
    PRIMARY KEY (sr_no)
);

CREATE TABLE features (
    id INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE facilities (
    id INT AUTO_INCREMENT,
    icon VARCHAR(200) NOT NULL,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE rooms (
    id INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    area INT  NOT NULL,
    price INT  NOT NULL,
    quantity INT  NOT NULL,
    adult INT  NOT NULL,
    children INT  NOT NULL,
    description VARCHAR(500) NOT NULL,
    status TINYINT DEFAULT '1' NOT NULL,
    removed INT DEFAULT '0' NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE room_facilities (
    sr_no INT AUTO_INCREMENT,
    room_id INT  NOT NULL,
    facilities_id INT  NOT NULL,
    PRIMARY KEY (sr_no),
    CONSTRAINT room_id FOREIGN KEY (room_id) REFERENCES rooms(id) ON UPDATE NO ACTION,
    CONSTRAINT facilities_id FOREIGN KEY (facilities_id) REFERENCES facilities(id) ON UPDATE NO ACTION
);

CREATE TABLE room_features (
    sr_no INT AUTO_INCREMENT,
    room_id INT  NOT NULL,
    features_id INT  NOT NULL,
    PRIMARY KEY (sr_no),
    CONSTRAINT roomid FOREIGN KEY (room_id) REFERENCES rooms(id) ON UPDATE NO ACTION,
    CONSTRAINT featuresid FOREIGN KEY (features_id) REFERENCES features(id) ON UPDATE NO ACTION
);

CREATE TABLE room_images (
    sr_no INT AUTO_INCREMENT,
    room_id INT  NOT NULL,
    image VARCHAR(500) NOT NULL,
    thumb TINYINT DEFAULT '0' NOT NULL,
    PRIMARY KEY (sr_no),
    CONSTRAINT room id FOREIGN KEY (room_id) REFERENCES rooms(id)
);


CREATE TABLE user_cred (
    id INT AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    address VARCHAR(500) NOT NULL,
    phonenum BIGINT NOT NULL,
    pincode INT NOT NULL,
    dob DATE NOT NULL,
    profile VARCHAR(200) NOT NULL, 
    password VARCHAR(200) NOT NULL,
    is_verified INT DEFAULT '0' NOT NULL,
    token VARCHAR(200),
    t_expire DATE,
    status INT DEFAULT '1' NOT NULL,
    datentime DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE booking_order (
    booking_id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    arrival INT DEFAULT '0' NOT NULL,
    refund INT,
    booking_status VARCHAR(200) DEFAULT 'pending' NOT NULL,
    order_id VARCHAR(200) NOT NULL,
    trans_id VARCHAR(200),
    trans_amt INT NOT NULL,
    trans_status VARCHAR(200) DEFAULT 'pending' NOT NULL,
    trans_resp_msg VARCHAR(200),
    rate_review INT DEFAULT 'NULL',
    datentime DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    PRIMARY KEY (booking_id),
    CONSTRAINT booking_order_id FOREIGN KEY (user_id) REFERENCES user_cred(id),
    CONSTRAINT booking_order_room_id FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE booking_details (
    sr_no INT AUTO_INCREMENT,
    booking_id INT NOT NULL,
    room_name VARCHAR(200) NOT NULL,
    price INT NOT NULL,
    total_pay INT NOT NULL,
    room_no VARCHAR(200),
    user_name VARCHAR(200) DEFAULT 'pending' NOT NULL,
    phonenum BIGINT NOT NULL,
    address VARCHAR(200) NOT NULL,
    PRIMARY KEY (sr_no),
    CONSTRAINT booking_details_id FOREIGN KEY (booking_id) REFERENCES booking_order(booking_id)
);

CREATE TABLE rating_review (
    sr_no INT AUTO_INCREMENT,
    booking_id INT NOT NULL,
    room_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT NOT NULL,
    review VARCHAR(200) NOT NULL,
    seen INT DEFAULT '0' NOT NULL,
    datentime DATETIME DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    PRIMARY KEY (sr_no),
    CONSTRAINT rating_review_id FOREIGN KEY (booking_id) REFERENCES booking_order(booking_id),
    CONSTRAINT rating_review_room_id FOREIGN KEY (room_id) REFERENCES rooms(id),
    CONSTRAINT rating_review_user_id FOREIGN KEY (user_id) REFERENCES user_cred(id)
);



