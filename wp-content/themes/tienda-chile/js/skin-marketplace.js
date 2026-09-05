/* Tienda Chile - Skin Marketplace: slider, rail horizontal y barra sticky de compra */
(function () {
    'use strict';

    /* Slider hero: crossfade con autoplay + dots. */
    function initHero() {
        var hero = document.querySelector('.tc-ml-hero');
        if (!hero) { return; }
        var slides = hero.querySelectorAll('.tc-ml-hero-slide');
        if (slides.length < 2) { return; }

        var current = 0;
        var dots = [];
        var timer = null;
        var dotsWrap = hero.querySelector('.tc-ml-hero-dots');

        if (dotsWrap) {
            for (var i = 0; i < slides.length; i++) {
                var dot = document.createElement('span');
                dot.className = 'tc-ml-hero-dot' + (i === 0 ? ' is-active' : '');
                (function (idx) {
                    dot.addEventListener('click', function () { go(idx); });
                })(i);
                dotsWrap.appendChild(dot);
                dots.push(dot);
            }
        }

        function go(idx) {
            current = (idx + slides.length) % slides.length;
            slides.forEach(function (s, i) {
                s.classList.toggle('is-active', i === current);
            });
            dots.forEach(function (d, i) {
                d.classList.toggle('is-active', i === current);
            });
            restart();
        }

        function restart() {
            if (timer) { clearInterval(timer); }
            timer = setInterval(function () { go(current + 1); }, 6500);
        }

        restart();

        /* Pausar autoplay mientras el cursor está sobre el hero. */
        hero.addEventListener('mouseenter', function () {
            if (timer) { clearInterval(timer); timer = null; }
        });
        hero.addEventListener('mouseleave', restart);
    }

    /* Rail "Lo más buscado": botones de scroll horizontal. */
    function initRails() {
        document.querySelectorAll('.tc-ml-rail-section').forEach(function (section) {
            var track = section.querySelector('.tc-ml-rail');
            var prev = section.querySelector('.tc-ml-rail-prev');
            var next = section.querySelector('.tc-ml-rail-next');
            if (!track) { return; }
            var step = function () { return Math.max(280, Math.min(420, track.clientWidth * 0.8)); };
            if (prev) { prev.addEventListener('click', function () { track.scrollBy({ left: -step(), behavior: 'smooth' }); }); }
            if (next) { next.addEventListener('click', function () { track.scrollBy({ left: step(), behavior: 'smooth' }); }); }
        });
    }

    /* Barra sticky móvil: dispara el add-to-cart de la ficha de producto. */
    function initStickyBuy() {
        var bar = document.querySelector('.tc-ml-sticky-buy');
        if (!bar) { return; }
        var btn = bar.querySelector('.tc-ml-sticky-buy-btn');
        var mainBtn = document.querySelector('.tc-ml-buybox .single_add_to_cart_button, form.cart .single_add_to_cart_button');

        if (btn && mainBtn) {
            btn.addEventListener('click', function () {
                try {
                    mainBtn.click();
                } catch (e) { /* noop */ }
            });
        }

        /* Mostrar/ocultar la barra al llegar al pie de la ficha. */
        var buybox = document.querySelector('.tc-ml-buybox');
        if (!buybox) { return; }
        function update() {
            var r = buybox.getBoundingClientRect();
            var visible = r.top < window.innerHeight && r.bottom > 0;
            bar.classList.toggle('is-hidden', visible && window.innerWidth > 900);
        }
        window.addEventListener('scroll', update, { passive: true });
        window.addEventListener('resize', update, { passive: true });
        update();
    }

    function main() {
        initHero();
        initRails();
        initStickyBuy();
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', main);
    } else {
        main();
    }
})();