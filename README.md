# AWS EC2 Servers

Este repositorio contiene scripts y archivos necesarios para levantar una instancia EC2 en Amazon Web Services con dos servidores web: Apache y Nginx. Cada servidor mostrará un mensaje de bienvenida junto con la dirección IP de la instancia EC2.

## Estructura del repositorio

```
aws-ec2-servers/
│── scripts/         # Scripts de instalación y configuración de Nginx y Apache en instancias Linux de AWS
│── web/             # Archivos HTML y CSS para la página de bienvenida
│   ├── index.html   # Página de inicio
│   ├── style.css    # Estilos para la página web
```

## Instalación y configuración

### 1. Lanzar una instancia EC2
1. Accede a la consola de AWS y crea una nueva instancia EC2 con Amazon Linux.
2. Asegúrate de configurar reglas de seguridad para permitir tráfico HTTP (`puerto 80`).
3. Conéctate a la instancia mediante SSH.

### 2. Ejecutar los scripts de instalación
Dentro de la carpeta `scripts/`, hay archivos para instalar y configurar los servidores web (use el User Data en la configuración adicional de AWS).

### 3. Configurar la página web
1. Copia los archivos dentro de la carpeta `public/` al directorio raíz del servidor web correspondiente (`/var/www/html/` para Apache o `/usr/share/nginx/html/` para Nginx).
2. Reinicia el servicio para aplicar los cambios:
   ```sh
   sudo systemctl restart apache2  # Para Apache
   sudo systemctl restart nginx    # Para Nginx
   ```

### 4. Acceder a la página web
Abre un navegador y accede a la dirección IP pública de la instancia EC2 para ver la página de bienvenida.