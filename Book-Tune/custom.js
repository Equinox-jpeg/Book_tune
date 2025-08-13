(function(){
  function truncate(text, n){
    if(!text) return '';
    return text.length <= n ? text : text.slice(0,n).replace(/\s+\S*$/,'') + '…';
  }
  async function loadDbBooks(){
    try{ const r = await fetch('books_db.php?_=' + Date.now()); if(!r.ok) return []; return await r.json(); }
    catch(e){ return []; }
  }
  async function enhance(){
    const list = document.querySelector('#book-list'); if(!list) return;
    const s = document.querySelector('#search');
    const f = document.querySelector('#categoryFilter');
    const base = (window.books || []).map(b => ({...b, createdAt: b.createdAt || 0}));
    const db = await loadDbBooks();
    let combined = base.concat(db);
    let view = combined;

    function render(){
      const q = (s && s.value || '').toLowerCase().trim();
      const cat = (f && f.value) || 'all';
      list.innerHTML = '';
      view = combined.filter(b => {
        const matchQ = !q || (b.title.toLowerCase().includes(q) || b.author.toLowerCase().includes(q));
        const matchC = cat === 'all' || (b.category && b.category.toLowerCase() === cat.toLowerCase());
        return matchQ && matchC;
      }).sort((a,b)=> (b.createdAt||0) - (a.createdAt||0));
      view.forEach(b=>{
        const el = document.createElement('article');
        el.className = 'card book';
        el.innerHTML = `
          <a href="book.php?id=${encodeURIComponent(b.id)}" aria-label="${b.title}">
            <img src="${b.cover}" alt="${b.title} cover">
            <div class="meta">
              <h3>${b.title}</h3>
              <p>${b.author}</p>
              ${b.description ? `<p class="desc">${truncate(b.description, 100)}</p>` : ''}
            </div>
          </a>
          ${b.isPremium ? '<span class="badge">Premium</span>' : ''}
        `;
        list.appendChild(el);
      });
    }
    render();
    if(s) s.addEventListener('input', render);
    if(f) f.addEventListener('change', render);
  }
  document.addEventListener('DOMContentLoaded', enhance);
})();