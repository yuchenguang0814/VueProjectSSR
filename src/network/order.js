import { request } from './request'
export function addQuestion (data) {
  return request({
    method: 'post',
    url: '/question',
    data: data
  })
}
export function getOrder (data) {
  return request({
    url: '/admin/orders',
    params: data
  })
}
