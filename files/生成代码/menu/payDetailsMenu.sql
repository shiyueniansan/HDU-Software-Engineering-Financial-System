-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表', '3', '1', 'payDetails', 'financial/payDetails/index', 1, 0, 'C', '0', '0', 'financial:payDetails:list', '#', 'admin', sysdate(), '', null, '全部工资明细表菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:payDetails:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:payDetails:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:payDetails:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:payDetails:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('全部工资明细表导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:payDetails:export',       '#', 'admin', sysdate(), '', null, '');