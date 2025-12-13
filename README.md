## Домашнее задание к занятию 1 «`Disaster recovery и Keepalived`» - ` Игонин В.А.`

# Задание 1
  * Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.
  * На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
  * Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
  * Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
  * На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

# Решение 1

<details> 
 Подскажите, что я не так делаю?
 
 Если я обрываю линк между Router 1 и Switch 1, все отрабатывает и отображается корректно 
 
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.0.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.2.png)

Если я обрываю линк между Router 1 и Switch 0, все отрабатывает, но нигде не отображается track для группы 1

![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.7.1.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.3.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.4.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.5.png)

Если я обрываю линк между Router 2 и Switch 0, то пинг не проходит, так как у Router 1, приоритет ниже чем у Router 2, поэтому я сделал приоритет выше. Всё работает, но опять же не отображается...
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.8.1.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.6.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.7.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/1.8.png)

[Cхема](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/hsrp_hw-igonin.pkt)

</details>  

# Задание 2
  * Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.
  * Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
  * Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
  * Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
  * На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

  
# Решение 2
<details> 

[check_nginx.sh](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/check_nginx.sh)
[keepalived-backup.conf](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/keepalived-backup.conf)
[keepalived-master.conf](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/keepalived-master.conf)

![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/2.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/2.1.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/2.3.png)
![alt text](https://github.com/Sayward-k8/sflt-hw-01/blob/main/img/2.4.png)

</details> 

