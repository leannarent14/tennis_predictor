const search = document.getElementById('search');
const matchList = document.getElementById('match-list');



// Search players.json and filter it
const searchPlayer = async searchText => {
    const res = await fetch('js/players.json');
    const players = await res.json();

    // Get matches to current text input
    let matches = players.filter(player => {
        const regex = new RegExp(`^${searchText}`, 'gi');
        return player.first_name.match(regex) || player.last_name.match(regex);
    });

    if (searchText.length === 0) {
        matches = [];
        matchList.innerHTML = '';
    }

    outputHtml(matches);
};

const outputHtml = matches => {
    if(matches.length > 0){
        const html = matches.map(match => `
        <div class="card card-body mb-1">
            <h4>${match.first_name} ${match.last_name}</h4>
        </div>
        `
        ).join('');
        matchList.innerHTML = html;
    }
}
//debugger;
search.addEventListener('input', () => searchPlayer(search.value));