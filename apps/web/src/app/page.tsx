const features = [
  {
    title: "Pedidos em tempo real",
    description: "Centralize mesa, delivery e retirada em um unico fluxo confiavel."
  },
  {
    title: "Gestao financeira",
    description: "Acompanhe faturamento diario, ticket medio e margem por produto."
  },
  {
    title: "Painel operacional",
    description: "Monitore cozinha, estoque e tempo de preparo com visao executiva."
  }
];

export default function Home() {
  return (
    <main className="mx-auto flex min-h-screen w-full max-w-6xl flex-col px-6 py-16 md:px-10">
      <section className="mb-14 rounded-3xl border border-white/10 bg-white/5 p-8 shadow-2xl shadow-orange-900/20 backdrop-blur-md md:p-12">
        <p className="mb-3 inline-flex rounded-full border border-brand-400/40 bg-brand-500/20 px-4 py-1 text-xs font-semibold uppercase tracking-[0.2em] text-brand-200">
          Plataforma profissional
        </p>
        <h1 className="mb-5 text-4xl font-black leading-tight text-white md:text-6xl">
          Restaurante Pro: site e aplicativo desktop na mesma base
        </h1>
        <p className="max-w-2xl text-lg text-slate-300">
          Estrutura pronta para escalar atendimento, vendas e operacao com foco em
          performance e experiencia do cliente.
        </p>
      </section>

      <section className="grid gap-6 md:grid-cols-3">
        {features.map((feature) => (
          <article
            key={feature.title}
            className="rounded-2xl border border-white/10 bg-slate-900/70 p-6 transition duration-300 hover:-translate-y-1 hover:border-brand-300/40"
          >
            <h2 className="mb-3 text-xl font-bold text-white">{feature.title}</h2>
            <p className="text-sm text-slate-300">{feature.description}</p>
          </article>
        ))}
      </section>
    </main>
  );
}
