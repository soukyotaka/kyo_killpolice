kyocfg = {
    ['health'] = 0, -- Saude minima, para reconhercer o player como morto.
    ['notfiy'] = {
        ['active'] = true, -- Deixar ativado = true | Deixar desativado = false.
        ['type'] = 'sucesso', -- tipo da notify.
        ['message'] = 'Parabéns, você acabou de receber sua recompensa por matar um policial.', -- Mensagem da notify.
        ['time'] = 5000, -- Tempo da notify.
    },
    ['permission'] = {
        'manager.permissao' -- Tabela de permissão, podendo colocar varias.
    },
    ['reward'] = {
        { 'present', 1 }, -- tabela de reward, podendo coloca varias recompensas.
    }
}

-- Developer - Kyotaka#0007
-- Discord - https://discord.gg/RVPcK7sQAK