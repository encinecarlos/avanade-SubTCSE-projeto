namespace Avanade.SubTCSE.Projeto.Domain.Agregates
{
    public record BaseEntity<TId>
    {
        public TId Id { get; set; }
    }
}
