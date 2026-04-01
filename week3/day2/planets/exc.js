// Select the section
let section = document.querySelector(".listPlanets");

// Planets array (with colors and moons)
let planets = [
    { name: "Mercury", color: "gray", moons: 0 },
    { name: "Venus", color: "orange", moons: 0 },
    { name: "Earth", color: "blue", moons: 1 },
    { name: "Mars", color: "red", moons: 2 },
    { name: "Jupiter", color: "brown", moons: 4 },
    { name: "Saturn", color: "gold", moons: 3 },
    { name: "Uranus", color: "lightblue", moons: 2 },
    { name: "Neptune", color: "darkblue", moons: 1 }
];

// Loop through planets
planets.forEach(planetData => {

    // Create planet div
    let planet = document.createElement("div");
    planet.classList.add("planet");
    planet.style.backgroundColor = planetData.color;
    planet.textContent = planetData.name;

    // Create moons
    for (let i = 0; i < planetData.moons; i++) {
        let moon = document.createElement("div");
        moon.classList.add("moon");

        // Position moons randomly around the planet
        moon.style.top = Math.random() * 70 + "px";
        moon.style.left = Math.random() * 70 + "px";

        planet.appendChild(moon);
    }

    // Add planet to section
    section.appendChild(planet);
});