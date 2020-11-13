import { request } from './request'
export function GetSeoMultidata () {
  return request({
    url: '/seo/multidata'
  })
}
