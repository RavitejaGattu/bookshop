using {
    my.bookshop as my
} from '../db/schema';
service CatalogService @(path:'/service') {
    entity Books as SELECT from my.Books {*,
        author.name as author
    } excluding {createdBy, modifiedBy};
    action submitOrder (book:Books:ID, amount:Integer);
}