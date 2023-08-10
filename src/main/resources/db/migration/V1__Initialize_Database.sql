CREATE TABLE virtual_account
(
    id               UUID         NOT NULL PRIMARY KEY,
    va_number        varchar(255) NOT NULL,
    name             varchar(255),
    required_payment BIGINT,
    description      varchar(255),
    type             varchar(255),
    status           varchar(255),
    expired_date     bigint
);

CREATE TABLE "user"
(
    id       UUID         NOT NULL PRIMARY KEY,
    name     varchar(255) not null,
    email    varchar(255) not null,
    password char(255)    not null,
    salt     varchar(12)  not null,
    role     varchar(255) not null,
    balance  bigint
);
