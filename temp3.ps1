
$content = Get-Content -Path index.html -Raw

$newMenu = @"
    <div class="section-top fade-up">
      <h2 class="section-title">A Few of Our Cakes</h2>
    </div>
    <div class="cake-grid">
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1562777717-b6aa6b3c612f?auto=format&fit=crop&q=80&w=400" alt="Chocolate Truffle">
        <h3>Chocolate Truffle</h3>
        <p>Premium dark chocolate layers, eggless options available.</p>
        <span class="price">Made to Order</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1464349095431-e9a21285b5f3?auto=format&fit=crop&q=80&w=400" alt="Salted Caramel">
        <h3>Salted Caramel</h3>
        <p>Rich caramel drip over soft vanilla sponge.</p>
        <span class="price">Delivered Fresh</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1616541823729-00fe0aacd32c?auto=format&fit=crop&q=80&w=400" alt="Red Velvet">
        <h3>Classic Red Velvet</h3>
        <p>Smooth cream cheese frosting & vibrant layers.</p>
        <span class="price">Bestseller</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1588195538326-c5b1e9f6a5b8?auto=format&fit=crop&q=80&w=400" alt="Bento Cake">
        <h3>Bento Choco Mango</h3>
        <p>Perfect for intimate celebrations.</p>
        <span class="price">Mini Delight</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1579306194872-64d3b7bac4c2?auto=format&fit=crop&q=80&w=400" alt="Fruit Cake">
        <h3>Fresh Fruit Cake</h3>
        <p>Loaded with seasonal exotic fruits & light cream.</p>
        <span class="price">Very Popular</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1606890737304-57a1ca8a5b62?auto=format&fit=crop&q=80&w=400" alt="Black Forest">
        <h3>Black Forest</h3>
        <p>Cherry compote combined with chocolate curls.</p>
        <span class="price">Timeless</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1557308536-ee471ef2c390?auto=format&fit=crop&q=80&w=400" alt="Blueberry Cake">
        <h3>Blueberry Layer</h3>
        <p>Soft purple sponge filled with blueberry jam.</p>
        <span class="price">Fruity & Sweet</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1621303837174-89787a7d4729?auto=format&fit=crop&q=80&w=400" alt="Lemon Cake">
        <h3>Lemon Zest</h3>
        <p>Refreshing lemon curd & light frosting.</p>
        <span class="price">Zesty</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1535141192574-5d4897c12636?auto=format&fit=crop&q=80&w=400" alt="Pink Strawberry">
        <h3>Pink Strawberry</h3>
        <p>Loaded with strawberry essence and real bits.</p>
        <span class="price">Party Favorite</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1559553156-2e97137af16f?auto=format&fit=crop&q=80&w=400" alt="Rainbow Sprinkle">
        <h3>Rainbow Sprinkle</h3>
        <p>A fun, festive confetti cake perfect for kids.</p>
        <span class="price">Kids Love It</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1542826438-bd32f43d626f?auto=format&fit=crop&q=80&w=400" alt="Cheesecake">
        <h3>Classic Cheesecake</h3>
        <p>A crumbly graham base with creamy cheese.</p>
        <span class="price">Signature</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1514517220035-ebfba4287eb1?auto=format&fit=crop&q=80&w=400" alt="Matcha Mint">
        <h3>Matcha Mint</h3>
        <p>Earthy matcha tones fused with a hint of mint.</p>
        <span class="price">Unique</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1635342813134-8ab3629fbf7f?auto=format&fit=crop&q=80&w=400" alt="Brownie Slab">
        <h3>Brownie Slab</h3>
        <p>Gooey chocolate brownie, custom decorated.</p>
        <span class="price">Gooey</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1576618148400-f54bed99fcfd?auto=format&fit=crop&q=80&w=400" alt="Carrot Cake">
        <h3>Carrot & Honey</h3>
        <p>Spiced sponge with walnuts and honey drizzle.</p>
        <span class="price">Healthy Hint</span>
      </div>
      <div class="cake-card fade-up">
        <img src="https://images.unsplash.com/photo-1571115177098-24ec42ed204d?auto=format&fit=crop&q=80&w=400" alt="Tiramisu">
        <h3>Tiramisu Dream</h3>
        <p>Coffee-soaked ladyfingers & mascarpone.</p>
        <span class="price">Classic</span>
      </div>
    </div>
"@

$content = $content -replace '<div class="section-top fade-up">[\s\S]*?<div class="trust-grid">', "$newMenu`n  </section>`n`n  <!-- TRUST BAR -->`n  <section class="container fade-up">`n    <div class="trust-grid">"

Set-Content -Path index.html -Value $content

