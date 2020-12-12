import { request } from './request'
export function getGoodsByCid (cid) {
  return request({
    url: '/productbyC',
    params: cid
  })
}
export function getGoodByid (id) {
  return request({
    url: '/product',
    params: id
  })
}
export function getGood () {
  return request({
    url: '/goods'
  })
}
