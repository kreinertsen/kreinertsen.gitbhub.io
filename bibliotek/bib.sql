drop table bok, laaner, forfatter, eksemplar, utlaan cascade;




CREATE TABLE laaner
(
    laanerid serial primary key,
    fornavn text not null,
    etternavn text not null,
    adresse text,
    epost text,
    tlf text,
    kjonn text
);

CREATE TABLE utlaan
(
    utlaanid serial primary key,
    dato date,
    innlevert text default 'nei' check (
        innlevert = 'ja'
        or innlevert = 'nei'
    ),
    laanerid int,
    eksemplarid int
);

CREATE TABLE eksemplar
(
    eksemplarid serial primary key,
    tilstand text,
    bokid int
);

CREATE TABLE bok
(
    bokid serial primary key,
    tittel text not null,
    forfatterid int references bok (bokid),
    isbn text,
    antallsider int check (antallsider > 0),
    pdato date,
    spraak text,
    sjanger text
);

CREATE TABLE forfatter
(
    forfatterid serial primary key,
    fornavn text not null,
    etternavn text not null,
    fdato date,
    kjonn text,
    kjonn text check (
        kjonn = 'm'
        or kjonn = 'f'
    )
);