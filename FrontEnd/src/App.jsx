import './App.css'
import { Route,Routes } from 'react-router-dom'
import PanelGeneral from './pages/PanelGeneral'

function App() {

  return (
    <>
      <Routes>
      <Route path="/" exact element={<PanelGeneral/>} />
      </Routes>
    </>
  )
}

export default App
