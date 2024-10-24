--1. Identifique uma situação problema:
--Relatório com os resumos dos dados de pagamento 
--Relatório com os resumos dos dados de pacotes
--Realizar calculos com o valor total de pagamentos
--Realizar calculos com o total de pacotes 


 

 --2. Crie uma View
--View para relatorio de pacotes 
 CREATE VIEW vwRelatorioPacotes AS
SELECT
	Origem AS 'Origem',
	Destino AS 'Destino',
	Ida_data AS 'Data da Ida',
	Volta_data AS 'Data da Volta'

FROM
	Pacotes



-- --View para relatorio de pagamentos 
CREATE VIEW vwRelatorioPagamento AS
SELECT
	Data_Pagamento AS 'Data de pagamento',
	Valor AS 'Valor',
	Método AS 'Método de pagamento'

FROM
	Pagamento



--3.Utilize variáveis e funções condicionais:
--Declarar uma variável que armazena o valor total de um pedido e aplicar um desconto condicionalmente, dependendo do valor.
DECLARE @TotalPagamento DECIMAL(10,2);
DECLARE @ValorComDesconto DECIMAL(10,2);

SET @TotalPagamento = 500.00;

SET @ValorComDesconto =
	CASE
		WHEN @TotalPagamento >= 1000 THEN @TotalPagamento * 0.90
		WHEN @TotalPagamento >= 500 AND @TotalPagamento < 1000 THEN @TotalPagamento * 0.95
	END;

SELECT @ValorComDesconto AS ValorFinalComDesconto


--Declarar uma variável que armazena os valores de entrada como data do voo e aplicar uma nova data de voo
DECLARE @DataVoo DATE;
DECLARE @NovaDataVoo DATE;

SET @DataVoo = '2024-10-25';
SET @NovaDataVoo =
	CASE
		WHEN @DataVoo = '2024-10-30' THEN DATEADD(DAY, 1, @DataVoo)
		WHEN @NovaDataVoo = '2024-11-02' THEN DATEADD(DAY, 2, @DataVoo)
	END;

SELECT @NovaDataVoo AS NovaDataVoo;


