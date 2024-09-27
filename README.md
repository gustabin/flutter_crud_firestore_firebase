# CRUD Firebase Flutter

Este es un proyecto de Flutter que utiliza Firebase para realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre una colección de nombres. La aplicación permite agregar, editar y eliminar nombres de una lista, almacenándolos en Firestore.

## Características

- **Agregar Nombre**: Permite al usuario ingresar un nuevo nombre que se almacena en Firebase Firestore.
- **Editar Nombre**: Permite al usuario editar un nombre existente.
- **Eliminar Nombre**: Permite al usuario eliminar un nombre de la lista.
- **Lista de Nombres**: Muestra todos los nombres almacenados en Firestore.

## Instalación

Para ejecutar este proyecto, asegúrate de tener instalado Flutter en tu máquina. Luego, sigue estos pasos:

1. Clona el repositorio:
   ```bash
   git clone <url-del-repositorio>
   cd crud_firebase
   ```

2. Instala las dependencias:
   ```bash
   flutter pub get
   ```

3. Configura Firebase siguiendo la [documentación oficial de Firebase](https://firebase.flutter.dev/docs/overview) para Flutter.

4. Ejecuta la aplicación:
   ```bash
   flutter run
   ```

## Estructura del Proyecto

- `lib/pages/`
  - `home_page.dart`: Pantalla principal que muestra la lista de nombres.
  - `edit_name_page.dart`: Pantalla para editar un nombre existente.
  - `add_name_page.dart`: Pantalla para agregar un nuevo nombre.
  - `services/firebase_service.dart`: Contiene los servicios de Firebase para operaciones CRUD.

## Dependencias

Este proyecto utiliza las siguientes dependencias:

- `lib/services/`
 - `firebase_core`: Para inicializar Firebase.
 - `cloud_firestore`: Para acceder y manipular Firestore.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor, sigue estos pasos:

1. Haz un fork del repositorio. https://github.com/gustabin/flutter_crud_firestore_firebase.git
2. Crea una nueva rama (`git checkout -b feature-nueva`).
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir una nueva característica'`).
4. Envía tus cambios (`git push origin feature-nueva`).
5. Abre un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.


## Consideraciones:
- Puedes ajustar el contenido según tus necesidades o añadir más detalles que consideres importantes.

## Donaciones:
- Cual ayuda se agradece https://www.stackcodelab.com/donaciones.php