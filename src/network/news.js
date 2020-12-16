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
export function getVideos () {
  return request({
    url: '/vids'
  })
}
export function getVid (id) {
  return request({
    url: '/vid',
    params: id
  })
}
