import BarraDeBusqueda from './BarraDeBusqueda'
import ListaProfesiones from './ListaProfesiones'
import ListaAspirantes from './ListaAspirantes'
import DropDownMenu from './DropDownMenu'
//import DetailCandidate from '../pages'

function PanelGeneral () {
  return (
    <div>
        este es el menu
        <DropDownMenu></DropDownMenu>
          esta es la lista  de aspirantes
        <ListaAspirantes></ListaAspirantes>
          este es la barra de busqueda
        <BarraDeBusqueda></BarraDeBusqueda>
          esta es la lista de profesiones
        <ListaProfesiones></ListaProfesiones>
        Vista de los Aspirantes
        <h1 className="text-3xl font-bold underline">
          Hello world!
        </h1>
    </div>
  )
}

export default PanelGeneral
