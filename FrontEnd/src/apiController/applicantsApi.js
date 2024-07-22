//Acceso a api aspirantes desde frontend.
export async function getApplicants() {
    try{
        const response = await fetch('http://localhost:3001/applicants');
        return await response.json();
    }catch(err){
        console.log(err);
    };
}

export async function getApplicantById(id) {
    try{
        const response = await fetch('http://localhost:3001/applicants/${id}');
        return await response.json();
    }catch(err){
        console.log(err);
    };
}