
import React from 'react';
const url = "http://localhost:3000"
const Subs = ({ subs }) => {
  return (
    <>
      <h1>All Subs</h1>
      {/* <a href="` ${url}` + /subs/new">Add Sub</a> */}
      <a href="/subs/new">Add Subs</a>
      {
        subs.map( (sub) => (
          <div>
          <h3>{sub.title}</h3>
          <a href= {'/subs/' + sub.id}>Show sub</a>
          <a href= {'/subs/' + sub.id + '/edit'}>Edit Sub</a>
          <a href= {'/subs/' + sub.id + '/edit'} data-method= "delete">Delete Sub</a>
          </div>
        ))
      }
    </>
  )
}
export default Subs;