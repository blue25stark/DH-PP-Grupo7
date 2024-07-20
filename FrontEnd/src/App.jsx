import { useState } from 'react'
import './App.css'
import { Route,Routes } from 'react-router-dom'
import PanelGeneral from './components/PanelGeneral'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    
   <Routes>
   <Route path="/" exact element={<PanelGeneral/>} />
   </Routes>
    </>
  )
}

export default App
