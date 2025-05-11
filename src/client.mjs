"use client-entry";

import { fetchRSC, hydrate } from '@parcel/rsc/client';

let updateRoot = hydrate();

async function navigate(pathname, push = false) {
    let root = await fetchRSC(pathname.replace('.html', '.rsc'));
    updateRoot(root, () => {
        if (push) {
            history.pushState(null, '', pathname);
        }
    });
}

// Intercept link clicks to perform RSC navigation.
document.addEventListener('click', e => {
    let link = e.target.closest('a');
    if (link) {
        e.preventDefault();
        navigate(link.pathname, true);
    }
});

// When the user clicks the back button, navigate with RSC.
window.addEventListener('popstate', e => {
    navigate(location.pathname);
});

if (module.hot) {
    module.hot.accept();
}

console.log("Hello!")