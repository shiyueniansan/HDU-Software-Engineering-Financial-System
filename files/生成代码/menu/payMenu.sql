-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表', '3', '1', 'pay', 'financial/pay/index', 1, 0, 'C', '0', '0', 'financial:pay:list', '#', 'admin', sysdate(), '', null, '工资表菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:pay:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:pay:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:pay:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:pay:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('工资表导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:pay:export',       '#', 'admin', sysdate(), '', null, '');