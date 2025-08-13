(function(){
  const qs = s => document.querySelector(s);
  // Dark mode
  const applyTheme = (mode) => { if(mode==='dark') document.body.classList.add('dark'); else document.body.classList.remove('dark'); };
  const saved = localStorage.getItem('bt_theme'); applyTheme(saved || 'light');
  document.addEventListener('DOMContentLoaded', () => {
    const t = qs('#darkModeToggle'); if(t){ t.addEventListener('click', ()=>{
      const next = document.body.classList.toggle('dark') ? 'dark' : 'light';
      localStorage.setItem('bt_theme', next);
    });}
  });

  function renderCatalog(){
    const list = qs('#book-list'); if(!list || typeof books === 'undefined') return;
    const select = qs('#categoryFilter');
    if(select){
      const cats = Array.from(new Set(books.map(b => b.category))).sort();
      cats.forEach(c => { const o = document.createElement('option'); o.value = c.toLowerCase(); o.textContent = c; select.appendChild(o); });
    }
    const render = ()=>{
      const term = (qs('#search')?.value || '').trim().toLowerCase();
      const cat = (qs('#categoryFilter')?.value || 'all').toLowerCase();
      list.innerHTML = '';
      books.filter(b => (cat==='all'||b.category.toLowerCase()===cat))
           .filter(b => !term || b.title.toLowerCase().includes(term) || b.author.toLowerCase().includes(term))
           .forEach(b => {
             const el = document.createElement('article'); el.className='card';
             el.innerHTML = `
               <a href="book.php?id=${encodeURIComponent(b.id)}" aria-label="${b.title}">
                 <img src="${b.cover}" alt="${b.title} cover">
                 <div class="meta">
                   <h3>${b.title}</h3>
                   <p>${b.author}</p>
                 </div>
               </a>
               ${b.isPremium ? '<span class="badge">Premium</span>' : ''}
             `;
             list.appendChild(el);
           });
    };
    render();
    const s = qs('#search'); const f = qs('#categoryFilter'); if(s) s.addEventListener('input', render); if(f) f.addEventListener('change', render);
  }

  document.addEventListener('DOMContentLoaded', renderCatalog);
})();