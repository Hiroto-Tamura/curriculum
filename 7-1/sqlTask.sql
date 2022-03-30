-- 1. �X�܃e�[�u������X�ܖ��𒊏o���Ȃ����B�܂��A�񖼂̕\���͕ʖ���'�X�ܖ�'�Ƃ��邱�ƁB
-- [��]
 select store_name as 店舗名 from store_table;
 
-- 2. �X�܏���X�ܖ���ABC���ɒ��o���Ȃ����B
-- [��]
 select * from store_table order by store_nameabc asc;
 
-- 3. �݌Ƀe�[�u���ɓX�܃e�[�u���A���i�e�[�u�����u���������v���A�X�ܖ��E���i���E�݌ɐ���S�Ď擾���Ȃ����B
-- [��]
 select store_name,goods_name,quantity 
 from stock_table
 join goods_table on stock_table.goods_code = goods_table.goods_code
 join store_table on stock_table.store_code = store_table.store_code;
 
-- 4. ���i�e�[�u������S���i�̒P���̕��ϒl�𒊏o���Ȃ����B
-- [��]
 select AVG(price) from goods_table;

 
-- 5. �X�܃R�[�h='EA01'�̍݌ɐ��̕��ϒl���傫���݌ɐ������X�܃R�[�h�𒊏o���Ȃ����B
-- [��]
 select store_code from stock_table 
  where quantity > (select AVG(quantity) from stock_table where store_code = 'EA01');
 
-- 6. ���i�e�[�u���Ɂu���i�R�[�h='M001'�A���i��='�}�t���['�A�P��=4500�~�A�X�V���t=�{�����t�v�̃f�[�^��ǉ����Ȃ����B�����s���SELECT���ʂ��\�t���邱�ƁB
-- [��]
 insert into goods_table(goods_code,goods_name,price,update_day)
values('M001','�}�t���[',4500,'2022-03-30');
 
-- 7. �݌Ƀe�[�u���̏��i�R�[�h='S987'�A���A�X�܃R�[�h='EA01'�ɑ΂��āA�u�݌ɐ�=10�A�X�V���t=�{�����t�v�ōX�V���Ȃ����B�����s���SELECT���ʂ��\�t���邱�ƁB
-- [��]
 update stock_table set quantity = 10 ,update_day = '2022-03-30'
where goods_code = 'S987' and store_code = 'EA01'
 
-- 8. 7�ōX�V�������i���폜���Ȃ����B�����s���SELECT���ʂ��\�t���邱�ƁB
-- [��]

delete from stock_table where update_day = '2022-03-30';
delete from goods_table where update_day = '2022-03-30';