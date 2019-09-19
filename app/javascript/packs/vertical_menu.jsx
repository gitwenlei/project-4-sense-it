import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

export default class Vertical extends React.Component{

    render(){
      return (
        <ul className="nav-bar flex-column">
            <li className="nav-logo">
                <a href="/landing"> Sense•It </a>
            </li>

            <li className="nav-item">
                <a className="nav-link" href="/logs/new">new log</a>
            </li>

            <li className="nav-item">
                <a className="nav-link" href="/logs">view logs</a>
            </li>

            <li className="nav-item">
                <a className="nav-link" href="/charts">view graphs</a>
            </li>

        </ul>)
        }
    }

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Vertical />,
    document.body.appendChild(document.createElement('div')),
  )
})