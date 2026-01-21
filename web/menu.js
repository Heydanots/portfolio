// Menu hamburger functionality
function toggleMenu() {
    const nav = document.getElementById('main-nav');
    const hamburger = document.getElementById('hamburger');

    if (nav && hamburger) {
        nav.classList.toggle('nav-open');
        hamburger.classList.toggle('active');
    }
}

function closeMenu() {
    const nav = document.getElementById('main-nav');
    const hamburger = document.getElementById('hamburger');

    if (nav && hamburger) {
        nav.classList.remove('nav-open');
        hamburger.classList.remove('active');
    }
}

// Close menu when clicking outside
document.addEventListener('click', function (event) {
    const nav = document.getElementById('main-nav');
    const hamburger = document.getElementById('hamburger');

    if (nav && hamburger && nav.classList.contains('nav-open')) {
        const isClickInsideNav = nav.contains(event.target);
        const isClickOnHamburger = hamburger.contains(event.target);

        if (!isClickInsideNav && !isClickOnHamburger) {
            closeMenu();
        }
    }
});
