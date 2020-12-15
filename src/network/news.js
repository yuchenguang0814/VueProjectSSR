import { request } from './request'
export function getNews () {
  return request({
    url: '/news'
  })
}
export function getNewByid (id) {
  return request({
    url: '/new',
    params: id
  })
}
export function getNew (id) {
  return request({
    url: '/gnew',
    params: id
  })
}
