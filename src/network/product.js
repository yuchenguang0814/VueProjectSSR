import { request } from './request'
export function getGoodsByCid (cid) {
  return request({
    url: '/productbyC',
    params: cid
  })
}
