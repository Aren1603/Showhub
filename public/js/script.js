$(document).ready(function () {
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            900: {
                items: 2
            },
            1100: {
                items: 3
            },
            1500: {
                items: 4
            }
        }
    })
})
