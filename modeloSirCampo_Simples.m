% Parâmetros do modelo SIR
taxa_Contato = 10;
prob_transmissao = 0.07;
priodo_infeccao = 5;

beta = taxa_Contato*prob_transmissao;
gamma = 1/priodo_infeccao;

[s,i] = meshgrid(0:0.1:1,0:0.1:1);

S = -beta*s.*i;
I = beta*s.*i - gamma*i;

% Plota o campo vetorial
streamslice(s, i, S, I);
title('Campo vetorial modelo SIR simples')
xlabel('Suscetíveis');
ylabel('Infectados');
text(0.5, -0.065, ['β: ' num2str(beta), '   γ: ' num2str(taxa_recuperacao), '   R0: ' num2str(beta/taxa_recuperacao)], 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top', 'FontSize', 12);
