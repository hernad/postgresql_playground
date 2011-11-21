-- http://www.postgresql.org/docs/current/static/arrays.html

create table arr_test (
     name test,
     arr_1 integer[1],
     arr_2 test[]
);

insert into arr_test(name, arr_1, arr_2) values('test1', '{1,3,5}', '{"ajoj", "ajjoj", "jjja"}');

insert into arr_test(name, arr_1, arr_2) values('test2', '{4,2,1}', '{"1ajoj", "a3jjoj", "Hjjja"}');
insert into arr_test(name, arr_1, arr_2) values('test2', '{1}', '{"1ajoj", "a3jjoj", "Hjjja", "x", "y"}');

select * from arr_test;

select name, arr_1[1], arr_2[2] from arr_test; 

