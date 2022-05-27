
const namebutton = document.getElementById('submit');
namebutton.addEventListener('click', async event => {
    let searchName = document.getElementById('name').value;
    api.data.name(searchName);
})

let lcuValues;
// Pull LCU values on load
window.onload = async event => {
    api.lcu();
    hidegrid();
}
// Manually pull LCU values
const lcubutton = document.getElementById('lcupull');
lcubutton.addEventListener('click', async event => {
    lcuValues = api.lcu();
})



async function hidegrid() {
    $('#choosechamp').on('change textInput input', async function () {
        search = document.getElementById('choosechamp').value;
        api.data.searchchamps(search);
    })
}