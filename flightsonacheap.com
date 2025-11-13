<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Flightsonacheap.com | Find Cheap Flights, Hotels & Car Rentals</title>
  <style>
    body { margin: 0; font-family: 'Poppins', sans-serif; background: #f7f9fc; color: #222; }
    header { background: #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.05); display: flex; justify-content: space-between; align-items: center; padding: 1em 2em; position: sticky; top: 0; z-index: 100; }
    header h2 { color: #1e90ff; margin: 0; }
    nav a { margin: 0 12px; text-decoration: none; color: #333; font-weight: 500; }
    nav a:hover { color: #ff7a00; }

    .hero {
      background: linear-gradient(to right, #1e90ff, #4fc3f7);
      color: #fff;
      text-align: center;
      padding: 80px 20px;
    }
    .hero h1 { font-size: 2.5rem; margin-bottom: 10px; }
    .hero p { font-size: 1.2rem; }

    .search-box {
      margin-top: 30px;
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 5px 10px rgba(0,0,0,0.1);
      display: inline-block;
      max-width: 800px;
      width: 100%;
    }

    .search-box input, .search-box select, .search-box button {
      padding: 10px;
      margin: 5px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 1rem;
    }

    .search-box button {
      background: #ff7a00;
      color: #fff;
      border: none;
      cursor: pointer;
    }
    .search-box button:hover { background: #ff984d; }

    .sections {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      max-width: 1200px;
      margin: 50px auto;
      padding: 0 20px;
    }

    .card {
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
      text-align: center;
      padding: 20px;
      transition: transform 0.2s ease;
    }
    .card:hover { transform: translateY(-5px); }
    .card img { width: 80px; height: 80px; margin-bottom: 15px; }
    .card a { display: inline-block; margin-top: 10px; color: #1e90ff; text-decoration: none; font-weight: 600; }

    .deals-section {
      background: #fff;
      text-align: center;
      padding: 60px 20px;
    }
    .deals-section h2 { margin-bottom: 30px; }

    .newsletter {
      background: linear-gradient(to right, #1e90ff, #4fc3f7);
      color: #fff;
      text-align: center;
      padding: 50px 20px;
    }
    .newsletter input[type=email] {
      padding: 10px;
      border-radius: 6px;
      border: none;
      width: 250px;
      margin-right: 10px;
    }
    .newsletter button {
      padding: 10px 20px;
      border-radius: 6px;
      border: none;
      background: #ff7a00;
      color: #fff;
      font-weight: 600;
      cursor: pointer;
    }

    footer {
      background: #1e1e1e;
      color: #ccc;
      text-align: center;
      padding: 30px 20px;
      font-size: 0.9rem;
    }
    footer a { color: #4fc3f7; margin: 0 10px; text-decoration: none; }
    footer a:hover { color: #ff7a00; }
  </style>
</head>
<body>

  <header>
    <h2>Flightsonacheap.com</h2>
    <nav>
      <a href="index.html">Home</a>
      <a href="flights.html">Flights</a>
      <a href="hotels.html">Hotels</a>
      <a href="cars.html">Cars</a>
      <a href="deals.html">Deals</a>
      <a href="blog.html">Blog</a>
    </nav>
  </header>

  <section class="hero">
    <h1>Find Cheap Flights, Hotels & Cars Worldwide</h1>
    <p>Compare 1000+ travel sites to get the best price — fast and easy.</p>

    <div class="search-box">
      <input type="text" placeholder="From" />
      <input type="text" placeholder="To" />
      <input type="date" />
      <input type="date" />
      <select>
        <option>1 Adult</option>
        <option>2 Adults</option>
        <option>3 Adults</option>
      </select>
      <button>Search Flights</button>
    </div>
  </section>

  <section class="sections">
    <div class="card">
      <img src="https://img.icons8.com/ios-filled/100/1e90ff/airplane-take-off.png" alt="Flights">
      <h3>Flights</h3>
      <p>Search hundreds of airlines and find the cheapest fares.</p>
      <a href="flights.html">Find Flights →</a>
    </div>

    <div class="card">
      <img src="https://img.icons8.com/ios-filled/100/1e90ff/hotel.png" alt="Hotels">
      <h3>Hotels</h3>
      <p>Compare hotel prices across Booking.com and Skyscanner.</p>
      <a href="hotels.html">Book Hotels →</a>
    </div>

    <div class="card">
      <img src="https://img.icons8.com/ios-filled/100/1e90ff/car-rental.png" alt="Cars">
      <h3>Car Rentals</h3>
      <p>Find affordable car hire options at any destination.</p>
      <a href="cars.html">Rent a Car →</a>
    </div>

    <div class="card">
      <img src="https://img.icons8.com/ios-filled/100/1e90ff/suitcase.png" alt="Deals">
      <h3>Deals</h3>
      <p>Discover last-minute deals and flash sales worldwide.</p>
      <a href="deals.html">See Deals →</a>
    </div>
  </section>

  <section class="deals-section">
    <h2>🔥 Trending Deals Right Now</h2>
    <p>✈ Sydney → Bali from $279 | 🏖 Melbourne → Gold Coast from $89</p>
    <p>🌍 Bangkok → London from $699 | 🏝 Perth → Fiji from $249</p>
  </section>

  <section class="newsletter">
    <h2>Get Exclusive Flight Alerts</h2>
    <p>Be the first to know when prices drop!</p>
    <form>
      <input type="email" placeholder="Enter your email" required />
      <button type="submit">Subscribe</button>
    </form>
  </section>

  <footer>
    <p>© 2025 Flightsonacheap.com — Compare, Save & Travel Smart</p>
    <a href="about.html">About</a> | 
    <a href="contact.html">Contact</a> | 
    <a href="privacy.html">Privacy Policy</a>
  </footer>

</body>
</html>
