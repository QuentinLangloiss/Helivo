window.onload = (event) => {
  const header = document.getElementById("header");

  header.innerHTML = `
      <a class="logo" href="index.html" target="_self">
          <div class="logo-image"></div>
          <div class="marque"></div>
      </a>
      <div class="menu">
          <div class="dropdown">
              <a href="#" class="dropbtn" id="servicesBtn">SERVICES</a>
              <div class="dropdown-content" id="servicesDropdown">
                  <a href="projets-sur-mesure.html">Projets sur mesure</a>
                  <a href="#">Modernisation de projets</a>
                  <a href="#">Maintenance active</a>
                  <a href="#">Contenu SEO stratégique</a>
              </div>
          </div>
          <a href="article.html" target="_self">BLOG</a>
          <a href="a-propos.html" target="_self">A PROPOS</a>
          <a href="#contact" target="_self">NOUS CONTACTER</a>
      </div>`;

  const servicesBtn = document.getElementById("servicesBtn");
  const servicesDropdown = document.getElementById("servicesDropdown");


  servicesBtn.addEventListener("click", function() {
      servicesDropdown.classList.toggle("show");
  });

  window.addEventListener("click", function(event) {
      if (!event.target.matches("#servicesBtn")) {
          const dropdowns = document.getElementsByClassName("dropdown-content");
          for (const dropdown of dropdowns) {
              if (dropdown.classList.contains("show")) {
                  dropdown.classList.remove("show");
              }
          }
      }
  });

  const footer = document.getElementById("footer");

  footer.innerHTML = `
      <div class="footercontent">
          <div class="logo2">
              <div class="logo-image"></div>
              <div class="marque"></div>
          </div>
          <div class="termes-et-conditions-container">
              <p class="termes-et-conditions">Termes et conditions</p>
              <p class="termes-et-conditions">Politique de confidentialité</p>
          </div>
      </div>
      <div class="ai-marketing-droits">
          tous droits réservés 2023
      </div>`;
};
