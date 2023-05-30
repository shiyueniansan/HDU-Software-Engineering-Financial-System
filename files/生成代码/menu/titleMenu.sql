-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称', '2052', '1', 'title', 'financial/title/index', 1, 0, 'C', '0', '0', 'financial:title:list', '#', 'admin', sysdate(), '', null, '职称菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:title:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:title:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:title:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:title:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职称导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:title:export',       '#', 'admin', sysdate(), '', null, '');