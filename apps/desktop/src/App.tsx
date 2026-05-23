const cards = [
  { label: "Pedidos ativos", value: "27" },
  { label: "Tempo medio cozinha", value: "14 min" },
  { label: "Taxa de entrega", value: "96%" }
];

export default function App() {
  return (
    <div className="shell">
      <header className="hero">
        <p className="badge">Desktop control center</p>
        <h1>Restaurante Pro</h1>
        <p>
          Operacao centralizada para atendimento, cozinha e financeiro em uma unica
          interface.
        </p>
      </header>

      <section className="grid">
        {cards.map((card) => (
          <article key={card.label} className="card">
            <span>{card.label}</span>
            <strong>{card.value}</strong>
          </article>
        ))}
      </section>
    </div>
  );
}
