import React from 'react'
import BarraDeBusqueda from './BarraDeBusqueda'
import ListaProfesiones from './ListaProfesiones'
import ListaAspirantes from './ListaAspirantes'
import DropDownMenu from './DropDownMenu'
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
    </div>
  )
}

export default PanelGeneral
