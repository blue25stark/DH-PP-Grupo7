import ListaProfesiones from '../components/ListaProfesiones'
import ListaAspirantes from '../components/ListaAspirantes'
import Banner from '../components/ApplicationBanner'
import NavBar from '../components/NavigationBar'
import Search from '../components/SectionSearch'
import Companies from '../components/SectionCompanies'
import Footer from '../components/Footer'

function PanelGeneral () {
  return (
    <>
      <Banner></Banner>
      <NavBar></NavBar>
      <Search></Search>
      <ListaAspirantes></ListaAspirantes>
      <ListaProfesiones></ListaProfesiones>
      <Companies></Companies>
      <Footer></Footer>
    </>
  )
}

export default PanelGeneral
