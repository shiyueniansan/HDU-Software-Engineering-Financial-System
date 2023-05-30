-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务', '3', '1', 'affair', 'financial/affair/index', 1, 0, 'C', '0', '0', 'financial:affair:list', '#', 'admin', sysdate(), '', null, '个人事务菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:affair:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:affair:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:affair:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:affair:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('个人事务导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:affair:export',       '#', 'admin', sysdate(), '', null, '');