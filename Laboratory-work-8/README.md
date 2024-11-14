### Криптографічний захист клієнт-серверної взаємодії в СКБД PostgreSQL

### 1. Встановити OpenSSL-пакет. В терміналі командного рядку запустити утиліту openssl та переглянути перелік доступних команд.

![Image 1](https://github.com/user-attachments/assets/b5e7a1ec-ea87-4da5-a4bb-6deb6f8e7c9e)

### 2. Створити самопідписаний сертифікат для сервера СКБД PostgreSQL з наступними параметрами:

```
openssl req -new -x509 -days 130 -nodes -text -out server.crt -keyout server.key -subj "/C=UA/L=Odessa/O=OPU/OU=AI-201/CN=Maksymenko.op.edu.ua"

```

![Image 2](https://github.com/user-attachments/assets/2213d56b-f56e-4f35-83b2-d1b55c339520)

### 3. Переглянути вміст сертифікату та визначити алгоритми створення відкритого ключа, а також алгоритм встановлення цифрового підпису.

![Image 3](https://github.com/user-attachments/assets/b2934891-e9d3-4401-8a70-6438c74ba7c4)

![Image 4](https://github.com/user-attachments/assets/37463235-5676-4d81-8e78-b2ac26ae8c47)

### 4. Скопіювати створений сертифікат відкритого ключа та закритий ключ до каталогу сервера СКБД PostgreSQL, яка використовувалася у попередній лабораторній роботі. У конфігураційному файлі postgresql.conf налаштувати значення SSL-параметрів для підтримки SSL-з'єднання між сервером та клієнтами.

![Image 5](https://github.com/user-attachments/assets/10dac703-2810-48a6-9542-787c1aa53cc8)

### 5. Використовуючи програму psql, встановити TSL/SSL-з'єднання з БД за прикладом з попередньої лабораторної роботи, але використовуючи формат параметрів "host=var1 port=var2 dbname=var3 user=var4 password=var5 sslmode=var6".

![Image 5](https://github.com/user-attachments/assets/79a2b820-7f70-4848-a28f-76ecd86c7ec0)

### 6. Встановити ПЗ контейнерної віртуалізації Docker та запустити Docker через ваш Docker-обліковий запис.

![Image 6](https://github.com/user-attachments/assets/6d324e5f-43ea-47aa-9028-526b8c662702)

### 7. Запустити Docker-контейнер СКБД PostgreSQL, використовуючи раніше розглянуті приклади (порт прослуховування запитів СКБД PostgreSQL = 5466).

![Image 7](https://github.com/user-attachments/assets/9670908d-321c-471d-87fb-9089974fbd6d)

### 8. У Docker-контейнері встановити програмний пакунок аналізу мережевих пакетів tcpdump. Отримати перелік мережевих інтерфейсів на вашому комп’ютері.

![Image 8](https://github.com/user-attachments/assets/f182f944-e9d7-4ce9-bff2-b1086c6cf4fe)

![Image 9](https://github.com/user-attachments/assets/2efd6242-4ef7-4421-88ff-ed94c0837102)

### 9. Провести запуск програми аналізу мережевих пакетів для кожного мережевого інтерфейсу поки не буде знайдено активний інтерфейс, який взаємодіє з мережею Internet та виводить на екран інформацію про ці пакети.

![Image 10](https://github.com/user-attachments/assets/4290aed6-2d28-4136-a5a9-8bdb82f10224)

### 10. Запустити програму аналізу мережевих пакетів в режимі прослуховування обраного мережевого інтерфейсу та налаштувати її на перегляд пакетів, які пов`язані з портом 5466, зберігаючи зміст пакетів в окремому файлі через перенаправлення потоку, наприклад, > res.dump. Результати роботи будуть використанні у наступних завданнях.








   








   











