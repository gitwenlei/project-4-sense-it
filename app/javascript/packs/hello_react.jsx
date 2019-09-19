// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = props => (
  // <div>Hello {props.name}!</div>

  // <!-- Vertical Nav -->
    <ul className="nav-bar flex-column">
        <li className="nav-logo">
            <a href="<%=logs_path %>"> Sense•It </a>
        </li>

        <li className="nav-item">
            <a className="nav-link" href="<%= new_log_path %>">new log</a>
        </li>

        <li className="nav-item">
            <a className="nav-link" href="<%= logs_path %>">view logs</a>
        </li>

        <li className="nav-item">
            <a className="nav-link" href="<%= charts_path %>">view graphs</a>
        </li>

    </ul>
)

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="" />,
    document.body.appendChild(document.createElement('div')),
  )
})