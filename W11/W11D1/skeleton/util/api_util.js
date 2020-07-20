export const fetchSearchGiphys = searchTerm => (
    $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=uw42HYUT44DWd3nNaYRU0nuY5yeoRUUd&limit=2`
    })
);