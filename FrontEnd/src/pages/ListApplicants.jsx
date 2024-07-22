import React from "react";
import DropDownMenu from "../components/DropDownMenu";
import ListaAspirantes from "../components/ListaAspirantes";
import PostulateSection from "../components/PostulateSection";


class ListApplicants extends React.Component {
    render() {
        return (
            <div>
                <DropDownMenu />
                <ListaAspirantes/>
                <PostulateSection/>
            </div>
        )
    }
}

export default ListApplicants;