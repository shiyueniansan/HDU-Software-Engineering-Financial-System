import request from '@/utils/request'

// 查询职务列表
export function listPosition(query) {
  return request({
    url: '/financial/position/list',
    method: 'get',
    params: query
  })
}

// 查询职务详细
export function getPosition(id) {
  return request({
    url: '/financial/position/' + id,
    method: 'get'
  })
}

// 新增职务
export function addPosition(data) {
  return request({
    url: '/financial/position',
    method: 'post',
    data: data
  })
}

// 修改职务
export function updatePosition(data) {
  return request({
    url: '/financial/position',
    method: 'put',
    data: data
  })
}

// 删除职务
export function delPosition(id) {
  return request({
    url: '/financial/position/' + id,
    method: 'delete'
  })
}
