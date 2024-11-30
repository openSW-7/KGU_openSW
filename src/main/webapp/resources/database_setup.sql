INSERT INTO restaurant_info (
    SIGUN_NM, SIGUN_CD, RESTRT_NM, REPRSNT_FOOD_NM, TASTFDPLC_TELNO, RM_MATR,
    REFINE_LOTNO_ADDR, REFINE_ROADNM_ADDR, REFINE_ZIP_CD, REFINE_WGS84_LOGT, REFINE_WGS84_LAT
) VALUES (
    '안양시', '41170', '화진가든', '왕갈비', '031-472-9292', NULL,
    '경기도 안양시 만안구 석수동 320-14번지', '경기도 안양시 만안구 안양로 468', '13965',
    126.9111037, 37.41180025
);

CREATE TABLE user (
    userId BIGINT AUTO_INCREMENT PRIMARY KEY,
    loginId VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    createdDate VARCHAR(255) NOT NULL
);

CREATE TABLE restaurant (
    restaurantId BIGINT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    la DOUBLE NOT NULL,
    lo DOUBLE NOT NULL
);

CREATE TABLE review (
    reviewId BIGINT AUTO_INCREMENT PRIMARY KEY,
    userId BIGINT NOT NULL,
    restaurantId BIGINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    rating DOUBLE NOT NULL,
    createdDate VARCHAR(255) NOT NULL,
    FOREIGN KEY (userId) REFERENCES user(userId) ON DELETE CASCADE,
    FOREIGN KEY (restaurantId) REFERENCES restaurant(restaurantId) ON DELETE CASCADE
);