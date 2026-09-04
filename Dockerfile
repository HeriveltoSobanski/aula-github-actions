# Imagem base leve — só servidor web estático, sem runtime Node em produção
FROM nginx:alpine

# Remove conteúdo padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o site (formulário de cadastro + validadores) para a pasta servida pelo nginx
COPY index.html /usr/share/nginx/html/
COPY pessoaFisica.js /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
