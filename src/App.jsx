import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import poomaalaiLogo from './assets/poomaalai_logo.jpeg'
import './App.css'
import NavBar from './NavBar.jsx'
import Course from './Course/Course.jsx'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <a href="https://www.poomaalai.com" target="_blank">
          <img src={poomaalaiLogo} className="logo poomaalai" alt="Poomaalai logo" />
        </a>
      </div>
      <div >
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
      </div>
      <NavBar></NavBar>
      <Course></Course>
    </>
  )
}

export default App
