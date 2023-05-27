import request from '@/utils/request'

// 查询课时任务列表
export function listWork(query) {
  return request({
    url: '/financial/work/list',
    method: 'get',
    params: query
  })
}

// 查询课时任务详细
export function getWork(id) {
  return request({
    url: '/financial/work/' + id,
    method: 'get'
  })
}

// 新增课时任务
export function addWork(data) {
  return request({
    url: '/financial/work',
    method: 'post',
    data: data
  })
}

// 修改课时任务
export function updateWork(data) {
  return request({
    url: '/financial/work',
    method: 'put',
    data: data
  })
}

// 删除课时任务
export function delWork(id) {
  return request({
    url: '/financial/work/' + id,
    method: 'delete'
  })
}
