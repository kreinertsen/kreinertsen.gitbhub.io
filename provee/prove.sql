CREATE TABLE passasjer (
  passasjerid serial primary key,
  navn text not null,
  adresse text not null,
  turid int references tur (turid)
);

CREATE TABLE Taxi (
  taxiid serial primary key,
  sjaafor text not null,
  turid int references tur (turid)
);

CREATE TABLE tur (
  turid serial primary key,
  pris int default = '200',
  varighet text
);

delete * from passasjer;
delete * from taxi where taxiid > 153;
insert into passasjer (navn, adresse) values ('Ole Olsen','Bergen '),('Tina Turner','Os'),('Per Klausen','Oslo'),('Hans Kristiansen','Stavanger');
select * from forfatter inner join 
   on (forfatter.forfatterid = bok.forfatterid);

   SELECT s.studentname
    , s.studentid
    , s.studentdesc
    , h.hallname
FROM students s
INNER JOIN hallprefs hp
    on s.studentid = hp.studentid
INNER JOIN halls h
    on hp.hallid = h.hallid


select * from passasjer inner join turid on (forfatter.turid = tur.turid) 
select sjaafor from taxi inner join taxid on (tur.turid = taxi.turid)
