package atv2;

public class Loja {




    private Integer pedidosRealizados;
    private Integer descontosAplicados;
    private Integer pedidosCancelados;






    public Loja() {
        this.pedidosRealizados = 0;
        this.descontosAplicados = 0;
        this.pedidosCancelados = 0;
    }




    public void aplicarPromocao(Pedido pedido) {
        pedido.setItemPromocional(true);
        System.out.println("O produto " + pedido.getProduto() + " está em promoção.");
    }






    public void cancelarPedido(Pedido pedido) {
        pedido.setCancelado(true);
        pedidosCancelados++;
        System.out.println("O pedido de código " + pedido.getCodigo() + " foi cancelado.");
    }





    public void aplicarDesconto(Pedido pedido, Double porcentagem) {
        if (pedido.isItemPromocional() && !pedido.isCancelado()) {
            Double valorTotal = pedido.calcularValorTotal();
            Double valorComDesconto = valorTotal - (valorTotal * (porcentagem / 100));
            pedido.setValorComDesconto(valorComDesconto);
            descontosAplicados++;
            System.out.println("Foi aplicad " + porcentagem + "% de desconto ao pedido de codigo " + pedido.getCodigo());
        } else {
            System.out.println("Pedido não elegível para desconto, operação não finalizada.");
        }
    }




    public void finalizarPedido(Pedido pedido) {
        if (!pedido.isCancelado()) {
            pedidosRealizados++;
            System.out.println("===== Pedido Finalizado =====");
            System.out.println("Código: " + pedido.getCodigo());
            System.out.println("Produto: " + pedido.getProduto());
            System.out.println("Quantidade: " + pedido.getQuantidade());
            System.out.println("Valor Unitário: R$ " + pedido.getValorUnitario());

            if (pedido.getValorComDesconto() > 0) {
                System.out.println("Valor com desconto: R$ " + pedido.getValorComDesconto());
            } else {
                System.out.println("Valor Total: R$ " + pedido.calcularValorTotal());
            }
            System.out.println("=============================");
        } else {
            System.out.println("Pedido de código " + pedido.getCodigo() + " está cancelado e não será finalizado.");
        }
    }


    public void exibirRelatorio() {
        System.out.println("\n===== Relatório da Loja =====");
        System.out.println("Pedidos Realizados: " + pedidosRealizados);
        System.out.println("Descontos Aplicados: " + descontosAplicados);
        System.out.println("Pedidos Cancelados: " + pedidosCancelados);
        System.out.println("=============================");
    }
}
