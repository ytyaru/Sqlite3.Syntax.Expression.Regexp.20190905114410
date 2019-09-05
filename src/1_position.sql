.echo on
-- 前方一致
select 'abc123' regexp '^abc.*';

-- 後方一致
select 'abc123' regexp '.*123$';

-- 完全一致
select 'abc123' regexp 'abc123';
select 'abc123' regexp '^abc123$';

-- 部分一致
select 'abc123' regexp '.*abc.*';
select '123abc' regexp '.*abc.*';
select '12abc3' regexp '.*abc.*';
select '12abc3' regexp '.*[a-zA-Z]+.*';
select 'abc2000年01月02日def' regexp '.*(\d{4}年\d{2}月\d{2}日).*';
 .
