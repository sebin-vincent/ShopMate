$("#search-form").submit(function (e) { 
    e.preventDefault();

    var searchQuery = $("#search_input").val();
    if (searchQuery) {
        window.location = 'winter/templates/products.html?q=' + searchQuery.split(' ').join('+');
    }
    
    
});