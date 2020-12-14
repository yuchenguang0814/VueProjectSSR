import { request } from './request'
export function getNews () {
  return request({
    url: '/news'
  })
}
