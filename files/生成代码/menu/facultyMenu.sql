-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工', '2052', '1', 'faculty', 'financial/faculty/index', 1, 0, 'C', '0', '0', 'financial:faculty:list', '#', 'admin', sysdate(), '', null, '教职工菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:faculty:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:faculty:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:faculty:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:faculty:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教职工导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:faculty:export',       '#', 'admin', sysdate(), '', null, '');