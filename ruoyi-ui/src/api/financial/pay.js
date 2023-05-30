import request from '@/utils/request'

// 查询工资列表
export function listPay(query) {
  return request({
    url: '/financial/pay/list',
    method: 'get',
    params: query
  })
}

// 查询工资详细
export function getPay(id) {
  return request({
    url: '/financial/pay/' + id,
    method: 'get'
  })
}

// 新增工资
export function addPay(data) {
  return request({
    url: '/financial/pay',
    method: 'post',
    data: data
  })
}

// 修改工资
export function updatePay(data) {
  return request({
    url: '/financial/pay',
    method: 'put',
    data: data
  })
}

// 删除工资
export function delPay(id) {
  return request({
    url: '/financial/pay/' + id,
    method: 'delete'
  })
}
