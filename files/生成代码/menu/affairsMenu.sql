-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务', '3', '1', 'affairs', 'financial/affairs/index', 1, 0, 'C', '0', '0', 'financial:affairs:list', '#', 'admin', sysdate(), '', null, '事务菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'financial:affairs:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'financial:affairs:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'financial:affairs:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'financial:affairs:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('事务导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'financial:affairs:export',       '#', 'admin', sysdate(), '', null, '');