-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务', '2052', '1', 'job', 'financial/job/index', 1, 0, 'C', '0', '0', 'financial:job:list', '#', 'admin', sysdate(), '', null, '职务菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:job:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:job:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:job:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:job:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('职务导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:job:export',       '#', 'admin', sysdate(), '', null, '');