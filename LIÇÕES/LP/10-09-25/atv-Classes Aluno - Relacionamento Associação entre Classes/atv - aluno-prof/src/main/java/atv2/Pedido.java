package atv2;

public class Pedido {

        // Atributos
        private Integer codigo;
        private String produto;
        private Integer quantidade;
        private Double valorUnitario;
        private Double valorComDesconto;
        private Boolean itemPromocional;
        private Boolean cancelado;

        // Construtor
        public Pedido(Integer codigo, String produto, Integer quantidade, Double valorUnitario) {
            this.codigo = codigo;
            this.produto = produto;
            this.quantidade = quantidade;
            this.valorUnitario = valorUnitario;
            this.valorComDesconto = 0.0;
            this.itemPromocional = false;
            this.cancelado = false;
        }

        // Metodo para calcular valor total sem desconto
        public double calcularValorTotal() {
            return valorUnitario * quantidade;
        }

        // Getters e Setters
        public Integer getCodigo() { return codigo; }
        public String getProduto() { return produto; }
        public Integer getQuantidade() { return quantidade; }
        public Double getValorUnitario() { return valorUnitario; }
        public Double getValorComDesconto() { return valorComDesconto; }
        public Boolean isItemPromocional() { return itemPromocional; }
        public Boolean isCancelado() { return cancelado; }

        public void setItemPromocional(Boolean itemPromocional) {
            this.itemPromocional = itemPromocional;
        }

        public void setCancelado(Boolean cancelado) {
            this.cancelado = cancelado;
        }

        public void setValorComDesconto(Double valorComDesconto) {
            this.valorComDesconto = valorComDesconto;
        }



}

