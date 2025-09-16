showNotes();

//if user add note,add it to the localStorage
let addbtn = document.getElementById('addbtn').addEventListener('click', function (e) {
    let addText = document.getElementById('addText');
    let addTitle=document.getElementById('addTitle');
    let notes = localStorage.getItem('notes');
    if (notes == null) {
        notesObj = [];
    }
    else {
        notesObj = JSON.parse(notes);
    }
    let myObj={
        title:addTitle.value,
        text:addText.value
    }
    notesObj.push(myObj);
    localStorage.setItem('notes', JSON.stringify(notesObj));
    addText.value = '';
    addTitle.value = '';
    showNotes();

});

//function to show elements from localStroage
function showNotes() {
    let notes = localStorage.getItem('notes');
    if (notes == null) {
        notesObj = [];
    }
    else {
        notesObj = JSON.parse(notes);
    }

    let html = '';
    notesObj.forEach(function (element, index) {
        html += `
                <div class="noteCard my-2 mx-2 card" style="width: 18rem;">
                    <div class="card-body">
                    <h5 class="card-title">${element.title}</h5>
                    <p class="card-text">${element.text}</p>
                    <button id="${index}" onclick="deleteNote(this.id)" class="btn btn-primary">Delete Note</button>
                    </div>
                </div>`;

    });
    let notesEln = document.getElementById('notes');
    if (notesObj.length != 0) {
        notesEln.innerHTML = html;
    }
    else {
        notesEln.innerHTML = `Nothing to show! Use "Add Note" section above to add notes.`;
    }
}

//function to delete note
function deleteNote(index) {

    let notes = localStorage.getItem('notes');
    if (notes == null) {
        notesObj = [];
    }
    else {
        notesObj = JSON.parse(notes);
    }
    notesObj.splice(index, 1);
    localStorage.setItem('notes', JSON.stringify(notesObj));
    showNotes();
}


//function for search
let search = document.getElementById('searchText');
search.addEventListener("input", function () {

    let inputVal = searchText.value.toLowerCase();
    let noteCards = document.getElementsByClassName('noteCard');
    Array.from(noteCards).forEach(function (element) {
        let cardText = element.getElementsByTagName("p")[0].innerText;
        if (cardText.includes(inputVal)) {
            element.style.display = "block";
        }
        else {
            element.style.display = "none";
        }

    });
});