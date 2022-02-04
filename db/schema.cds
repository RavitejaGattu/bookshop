using {
    Currency, managed, sap
} from '@sap/cds/common';
namespace my.bookshop;

entity Books : managed {
    key ID : UUID;
    title  : localized String(111);
    descr  : localized String(1111);
    author : Association to Authors;
    genres : Association to Genres;
    stock  : Integer;
    Price  : Decimal(9,2);
    currency : Currency;
}

entity Authors : managed {
    key ID : UUID;
    name   : localized String(111);
    books  : Association to many Books on books.author = $self;
}

entity Genres : managed {
    key ID : UUID;
    parent : Association to Genres;
    children: Composition of many Genres on children.parent = $self;
}