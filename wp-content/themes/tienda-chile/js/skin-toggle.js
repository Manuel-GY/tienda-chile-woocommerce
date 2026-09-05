/* Tienda Chile - Toggle de skin (Lujo / Marketplace / Boutique Pastel) */
(function () {
    'use strict';

    function getCurrentLook() {
        var params = new URLSearchParams(window.location.search);
        var look = params.get('look');
        if (look === 'ml' || look === 'marketplace') {
            return 'marketplace';
        }
        if (look === 'pastel' || look === 'boutique') {
            return 'pastel';
        }
        if (look === 'lujo') {
            return 'lujo';
        }
        var m = document.cookie.match(/(?:^|;\s*)tc_look=([^;]*)/);
        var c = m ? decodeURIComponent(m[1]) : '';
        return (c === 'marketplace') ? 'marketplace' : (c === 'pastel' ? 'pastel' : 'lujo');
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

        var options = [
            { look: 'lujo', label: 'Lujo', cls: 'tc-skin-toggle-lujo' },
            { look: 'marketplace', label: 'MercadoLibre', cls: 'tc-skin-toggle-ml' },
            { look: 'pastel', label: 'Boutique Pastel', cls: 'tc-skin-toggle-pastel' }
        ];

        options.forEach(function (opt) {
            var btn = document.createElement('button');
            btn.type = 'button';
            btn.className = 'tc-skin-toggle-btn ' + opt.cls + (current === opt.look ? ' tc-skin-on' : '');
            btn.setAttribute('aria-pressed', current === opt.look ? 'true' : 'false');
            btn.innerHTML = '<span class="tc-skin-toggle-dot"></span> ' + opt.label;
            btn.addEventListener('click', function () { setLook(opt.look); });
            toggle.appendChild(btn);
        });

        document.body.appendChild(toggle);
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', buildToggler);
    } else {
        buildToggler();
    }
})();