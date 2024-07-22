import './App.css'
import { Route,Routes } from 'react-router-dom'
import PanelGeneral from './pages/PanelGeneral'
import ListApplicants from './pages/ListApplicants'

function App() {

  return (
    <>
      <Routes>
      <Route path="/" exact element={<PanelGeneral/>} />
      <Route path="/applicants" element={<ListApplicants />} />
      </Routes>
    </>
  )
}

export default App
