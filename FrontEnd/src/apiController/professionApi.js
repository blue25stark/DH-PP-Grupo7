//Acceso a api profesiones desde frontend.
export async function getProfessions() {
    try{
        const response = await fetch('http://localhost:3001/professions');
        return await response.json();
    }catch(err){
        console.log(err);
    };
}