.echo on
-- .
select 'etc...' regexp 'etc.\.\.';
select 'etc!!!' regexp 'etc.\.\.';
select 'etc!!!' regexp 'etc...';

-- ^
select '2^4=16' regexp '2\^4=16';
select '2^4=16' regexp '2^4=16';
-- $
select '$100' regexp '\$100';
select '$100' regexp '$100';
-- []
select '[123]' regexp '\[123\]';
select '[123]' regexp '[123]';
-- ()
select '(123)' regexp '\(123\)';
select '(123)' regexp '(123)';
-- *
select '***' regexp '\*\*\*';
select '***' regexp '***';
-- +
select '1+2' regexp '1\+2';
select '1+2' regexp '1+2';
-- ?
select 'what?' regexp 'what\?';
select 'what?' regexp 'what?';
-- |
select 'A|B' regexp 'A\|B';
select 'A|B' regexp 'A|B';
-- \
select '\s' regexp '\\s';
select '\s' regexp '\s';
- .
