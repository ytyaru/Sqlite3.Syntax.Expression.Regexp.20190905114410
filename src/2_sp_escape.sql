.echo on
select '\' regexp '\b';
select ' ' regexp '\b';
select 'a' regexp '\b';
select ' ' regexp '\b';

select char(0x0A) regexp '\cJ';

select '123' regexp '\d+';
select '123a' regexp '\d+';
select 'abc' regexp '\D+';
select '123' regexp '\D+';

select char(0x0C) regexp '\f';
select char(0x0C) regexp '\cL';

select 'A' || char(0x0A) || 'B' regexp 'A\nB';

select 'A' || char(0x0D) || 'B' regexp 'A\rB';
select 'A' || char(0x0D) || char(0x0A) || 'B' regexp 'A\r\nB';

select 'A B' regexp 'A\sB';
select 'A' || char(0x0C) || 'B' regexp 'A\sB';
select 'A' || char(0x0A) || 'B' regexp 'A\sB';
select 'A' || char(0x0D) || 'B' regexp 'A\sB';
select 'A' || char(0x09) || 'B' regexp 'A\sB';
select 'A' || char(0x0B) || 'B' regexp 'A\sB';
select 'A　B' regexp 'A\sB';
select 'あ' regexp '\s';

select 'A B' regexp 'A\SB';
select 'A' || char(0x0C) || 'B' regexp 'A\SB';
select 'A' || char(0x0A) || 'B' regexp 'A\SB';
select 'A' || char(0x0D) || 'B' regexp 'A\SB';
select 'A' || char(0x09) || 'B' regexp 'A\SB';
select 'A' || char(0x0B) || 'B' regexp 'A\SB';
select 'A　B' regexp 'A\SB';
select 'あ' regexp '\S';

select 'A' || char(0x09) || 'B' regexp 'A\tB';

select 'A' || char(0x0B) || 'B' regexp 'A\vB';

select 'a' regexp '\w';
select 'Z' regexp '\w';
select '3' regexp '\w';
select '_' regexp '\w';
select '$' regexp '\w';

select 'a' regexp '\W';
select 'Z' regexp '\W';
select '3' regexp '\W';
select '_' regexp '\W';
select '$' regexp '\W';

select 'o001' regexp '\o001';
select '001' regexp '\o001';
select '1' regexp '\o001';

select 'x0F' regexp '\x0F';
select '0x0F' regexp '\x0F';
select 'x0F' regexp '\x0F';
select '15' regexp '\x0F';

select '11' regexp '(\d)\1';
select '1a1' regexp '(\d)a\1';

select 'c' regexp '\c';
select 'a' regexp '\a';
select 'a' regexp '\aa';
select 'a' regexp '\Aa';
select 'e' regexp '\e';
select 'g' regexp '\g';
select 'h' regexp '\h';
select 'i' regexp '\i';
select 'j' regexp '\j';
select 'k' regexp '\k';

select 'a' regexp '.';
select 'aa' regexp '.';
select 'aaaaa' regexp '.*';

select 'a' regexp '[abc]';
select 'z' regexp '[abc]';

select 'a' regexp '[^abc]';
select 'z' regexp '[^abc]';

select 'k' regexp '[a-z]';
select 'A' regexp '[a-z]';

select '' regexp 'a?';
select 'a' regexp 'a?';
select 'b' regexp 'a?';
select 'aaa' regexp 'a?';
select 'k' regexp '[a-z]?';
select 'A' regexp '[a-z]?';
select '' regexp '(abc)?';
select 'abc' regexp '(abc)?';
select 'def' regexp '(abc)?';

select '' regexp 'a+';
select 'a' regexp 'a+';
select 'b' regexp 'a+';
select 'aaa' regexp 'a+';
select 'k' regexp '[a-z]+';
select 'A' regexp '[a-z]+';
select 'kkk' regexp '[a-z]+';
select '' regexp '(abc)+';
select 'abc' regexp '(abc)+';
select 'def' regexp '(abc)+';
select 'abcabc' regexp '(abc)+';
select 'abcdef' regexp '(abc)+';
select 'defabc' regexp '(abc)+';
select 'abcdef' regexp '(abc)+.*';
select 'abcabcdef' regexp '(abc)+.*';

select '' regexp 'a*';
select 'a' regexp 'a*';
select 'b' regexp 'a*';
select 'aaa' regexp 'a*';
select 'k' regexp '[a-z]*';
select 'A' regexp '[a-z]*';
select 'kkk' regexp '[a-z]*';
select '' regexp '(abc)*';
select 'abc' regexp '(abc)*';
select 'def' regexp '(abc)*';
select 'abcabc' regexp '(abc)*';
select 'abcdef' regexp '(abc)*';
select 'defabc' regexp '(abc)*';
select 'abcdef' regexp '(abc)*.*';
select 'abcabcdef' regexp '(abc)*.*';

select '' regexp 'a{1}';
select 'a' regexp 'a{1}';
select 'b' regexp 'a{1}';
select 'aaa' regexp 'a{1}';
select 'aaa' regexp 'a{3}';
select 'k' regexp '[a-z]{1}';
select 'A' regexp '[a-z]{1}';
select 'ghi' regexp '[a-z]{1}';
select 'ghi' regexp '[a-z]{3}';
select '' regexp '(abc){1}';
select 'abc' regexp '(abc){1}';
select 'abc' regexp '(abc){1}';
select 'def' regexp '(abc){1}';
select 'abcabc' regexp '(abc){1}';
select 'abcdef' regexp '(abc){1}';
select 'defabc' regexp '(abc){1}';
select 'abcdef' regexp '(abc){1}.*';
select 'abcabcdef' regexp '(abc){1}.*';

select '' regexp 'a{1,}';
select 'a' regexp 'a{1,}';
select 'b' regexp 'a{1,}';
select 'aaa' regexp 'a{1,}';
select 'aaa' regexp 'a{4,}';

select '' regexp 'a{1,2}';
select 'a' regexp 'a{1,2}';
select 'b' regexp 'a{1,2}';
select 'aaa' regexp 'a{1,2}';
select 'aaa' regexp 'a{4,7}';
select 'aaa' regexp 'a{3,4}';

select 'aabc' regexp 'a(abc)';
select 'adef' regexp 'a(abc)';
select 'a' regexp 'a(abc)?';
select 'aabc' regexp 'a(abc)?';
select 'adef' regexp 'a(abc)?';

select 'aabc' regexp 'a(abc|def)';
select 'adef' regexp 'a(abc|def)';

select 'abc' regexp '(?=abc)';
select 'abc' regexp '(?<=abc)';
select 'abc' regexp '(?!abc)';
select 'abc' regexp '(?<!abc)';

