// ANIMATIONS SLIDE UP AND FADE IN ON THE HOMEPAGE
// FOR THE MOVIE CARD

    const options = {

        threshold: .25

    }


    const imageObserver = new IntersectionObserver((entries,imgObserver) => {

        entries.forEach((entry) => {

            if(entry.isIntersecting) {

                const lazyImage = entry.target
                lazyImage.src = lazyImage.dataset.src
                lazyImage.classList.add('slide_up_fade_in');
                imgObserver.unobserve(lazyImage);

            }

        })

    }, options);

    const images = document.querySelectorAll('.animations');

    images.forEach((element) => {

        imageObserver.observe(element);

    })

