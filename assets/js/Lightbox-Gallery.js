(function (document) {
  "use strict";
  const ready = (callback) => {
    if (document.readyState != "loading") callback();
    else document.addEventListener("DOMContentLoaded", callback);
  };
  ready(() => {
    class imgPreloader {
      constructor() {
        this.images = new Array();
        this.addImages = function (images) {
          const self = this;
          if (!images) return;
          if (Array.isArray(images)) {
            images.forEach(function (ele) {
              const _image = new Image();
              _image.src = ele;
              self.images.push(_image);
            });
          }
        };
        return this;
      }
    }

    const play = `<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-play-fill">
<path d="m11.596 8.697-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z"></path>
</svg>`;
    const pause = `<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pause-fill">
<path d="M5.5 3.5A1.5 1.5 0 0 1 7 5v6a1.5 1.5 0 0 1-3 0V5a1.5 1.5 0 0 1 1.5-1.5zm5 0A1.5 1.5 0 0 1 12 5v6a1.5 1.5 0 0 1-3 0V5a1.5 1.5 0 0 1 1.5-1.5z"></path>
</svg>`;

    const kulLightBox = new bootstrap.Modal("#lightbox", {
      keyboard: false,
    });
    const INTERVAL = 5000;
    const TIMEOUT = 200;
    const preload = true;
    let intervalId;
    const lightbox = document.getElementById("lightbox");
    const gallery = [...document.querySelectorAll("[data-kul-lightbox] a")];
    const nextBtn = document.getElementById("nextBtn");
    const prevBtn = document.getElementById("prevBtn");
    const slideShow = document.getElementById("slideShow");
    const lightboxImg = document.getElementById("lightboxImg");
    const slide = document.querySelector("#lightbox .modal-body");
    let galleryImages = [];
    let allImages;
    let currentIndex;
    gallery.forEach((link, index) => {
      galleryImages.push({
        imageSrc: link.href,
        index: index,
      });
      link.setAttribute("id", index);
      allImages = galleryImages.length - 1;
    });
    gallery.forEach((link, index) => {
      link.addEventListener("pointerdown", (e) => {
        e.preventDefault();
        currentIndex = galleryImages[index].index;
        lightboxImg.src = galleryImages[currentIndex].imageSrc;
        kulLightBox.show(e);
      });
    });

    const showNext = (e) => {
      e.stopPropagation();
      if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
      }
      slideShow.innerHTML = play;
      currentIndex++;
      if (currentIndex > allImages) {
        currentIndex = allImages;
      } else {
        lightboxImg.classList.add("fade");
        setTimeout(fadeIn, TIMEOUT);
      }
    };
    const showPrev = (e) => {
      e.stopPropagation();
      if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
      }
      slideShow.innerHTML = play;
      currentIndex--;
      if (currentIndex < 0) {
        currentIndex = 0;
      } else {
        lightboxImg.classList.add("fade");
        setTimeout(fadeIn, TIMEOUT);
      }
    };
    const fadeIn = () => {
      lightboxImg.classList.remove("fade");
      lightboxImg.src = galleryImages[currentIndex].imageSrc;
    };
    const newImage = () => {
      currentIndex++;
      if (currentIndex > allImages) currentIndex = 0;
      lightboxImg.classList.add("fade");
      setTimeout(fadeIn, TIMEOUT);
    };
    const loopImages = (e) => {
      e.stopPropagation();
      if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
        slideShow.innerHTML = play;
      } else {
        newImage();
        slideShow.innerHTML = pause;
        intervalId = setInterval(newImage, INTERVAL);
      }
    };
    const handleHidden = (e) => {
      e.stopPropagation();
      if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
      }
      slideShow.innerHTML = play;
    };

    slideShow.addEventListener("pointerdown", loopImages);
    prevBtn.addEventListener("pointerdown", showPrev);
    nextBtn.addEventListener("pointerdown", showNext);
    lightbox.addEventListener("hidden.bs.modal", handleHidden);
    slide.addEventListener("pointerdown", (e) => {
      e.stopPropagation();
      if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
        slideShow.innerHTML = play;
      }
      if (e.pageX > e.target.clientWidth / 2) currentIndex++;
      else currentIndex--;
      if (currentIndex >= 0 && currentIndex <= allImages) {
        lightboxImg.classList.add("fade");
        setTimeout(fadeIn, TIMEOUT);
      }
      if (currentIndex > allImages) currentIndex = allImages;
      if (currentIndex < 0) currentIndex = 0;
    });

    document.addEventListener("keydown", (e) => {
      if (document.body.classList.contains("modal-open")) {
        switch (e.code) {
          case "ArrowLeft":
            showPrev(e);
            break;
          case "ArrowRight":
            showNext(e);
            break;
          case "Escape":
            kulLightBox.hide(e);
            break;
          case "Space":
            loopImages(e);
            break;
          default:
            return;
        }
      }
    });

    const preLoad = () => {
      gallery.forEach((bigImg) => {
        let newImage = new imgPreloader();
        newImage.addImages([`${bigImg.href}`]);
      });
    };
    if (preload) preLoad();
  });
})(document);
