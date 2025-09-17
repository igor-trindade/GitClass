package atv2;

public class TesteLoja {

        public static void main(String[] args) {
            // Criando 3 pedidos diferentes (Wrappers usados nos parâmetros)
            Pedido p1 = new Pedido(1, "Notebook", 2, 3500.00);
            Pedido p2 = new Pedido(2, "Smartphone", 3, 1500.00);
            Pedido p3 = new Pedido(3, "Headset", 5, 200.00);

            // Criando a loja
            Loja loja = new Loja();

            // Cancelar pedido 1
            loja.cancelarPedido(p1);

            // Aplicar promoção no pedido 2
            loja.aplicarPromocao(p2);

            // Aplicar desconto no pedido 2
            loja.aplicarDesconto(p2, 10.0);

            // Tentar aplicar desconto no pedido 3 (não está em promoção)
            loja.aplicarDesconto(p3, 15.0);

            // Finalizar pedidos
            loja.finalizarPedido(p1);
            loja.finalizarPedido(p2);
            loja.finalizarPedido(p3);

            // Exibir relatório final
            loja.exibirRelatorio();
        }
    }


