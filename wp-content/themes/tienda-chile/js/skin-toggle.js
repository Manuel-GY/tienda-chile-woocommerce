/* Tienda Chile - Toggle de skin (Lujo / Marketplace) */
(function () {
    'use strict';

    function getCurrentLook() {
        var params = new URLSearchParams(window.location.search);
        var look = params.get('look');
        if (look === 'ml' || look === 'marketplace') {
            return 'marketplace';
        }
        var m = document.cookie.match(/(?:^|;\s*)tc_look=([^;]*)/);
        return (m && m[1] === 'marketplace') ? 'marketplace' : 'lujo';
    }

    function setLook(look) {
        var expires = new Date();
        expires.setTime(expires.getTime() + (365 * 24 * 60 * 60 * 1000));
        document.cookie = 'tc_look=' + encodeURIComponent(look) + '; expires=' + expires.toUTCString() + '; path=/';
        var url = new URL(window.location.href);
        url.searchParams.delete('look');
        window.location.href = url.toString();
    }

    function buildToggler() {
        var current = getCurrentLook();
        var toggle = document.createElement('div');
        toggle.className = 'tc-skin-toggler';
        toggle.setAttribute('role', 'group');
        toggle.setAttribute('aria-label', 'Cambiar apariencia del sitio');

        var reset = document.createElement('button');
        reset.type = 'button';
        reset.className = 'tc-skin-toggle-btn tc-skin-toggle-reset' + (current === 'lujo' ? ' tc-skin-on' : '');
        reset.setAttribute('aria-pressed', current === 'lujo' ? 'true' : 'false');
        reset.innerHTML = '<span class="tc-skin-toggle-dot"></span> Estilo Lujo';
        reset.addEventListener('click', function () { setLook('lujo'); });

        var ml = document.createElement('button');
        ml.type = 'button';
        ml.className = 'tc-skin-toggle-btn tc-skin-toggle-ml' + (current === 'marketplace' ? ' tc-skin-on' : '');
        ml.setAttribute('aria-pressed', current === 'marketplace' ? 'true' : 'false');
        ml.innerHTML = '<span class="tc-skin-toggle-dot"></span> Estilo MercadoLibre';
        ml.addEventListener('click', function () { setLook('marketplace'); });

        toggle.appendChild(reset);
        toggle.appendChild(ml);
        document.body.appendChild(toggle);
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', buildToggler);
    } else {
        buildToggler();
    }
})();