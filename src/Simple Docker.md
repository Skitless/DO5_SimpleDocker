# Simple Docker

## Part 1. Готовый докер

Возьми официальный докер-образ с **nginx** и выкачай его при помощи `docker pull`.

![2.png](Simple%20Docker/2.png)

Проверь наличие докер-образа через `docker images`.

![3.png](Simple%20Docker/3.png)

Запусти докер-образ через `docker run -d [image_id|repository]`.

![5.png](Simple%20Docker/5.png)

Проверь, что образ запустился через `docker ps`.

![4.png](Simple%20Docker/4.png)

Посмотри информацию о контейнере через `docker inspect [container_id|container_name]`.

```bash
moltendr@in-h6 ~ % docker inspect tender_zhukovsky
[
    {
        "Id": "387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1",
        "Created": "2024-08-07T14:35:38.907978632Z",
        "Path": "/docker-entrypoint.sh",
        "Args": [
            "nginx",
            "-g",
            "daemon off;"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 3112,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2024-08-07T14:35:39.129021116Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:a72860cb95fd59e9c696c66441c64f18e66915fa26b249911e83c3854477ed9a",
        "ResolvConfPath": "/var/lib/docker/containers/387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1/hostname",
        "HostsPath": "/var/lib/docker/containers/387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1/hosts",
        "LogPath": "/var/lib/docker/containers/387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1/387dccaa4d93d5ae4e770b8853fc546b0ca1728294fc7a33023872d7a810f4d1-json.log",
        "Name": "/tender_zhukovsky",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "default",
            "PortBindings": {},
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "private",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "ConsoleSize": [
                0,
                0
            ],
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": null,
            "BlkioDeviceWriteBps": null,
            "BlkioDeviceReadIOps": null,
            "BlkioDeviceWriteIOps": null,
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "KernelMemory": 0,
            "KernelMemoryTCP": 0,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": null,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/ae9a3ff1106252c1e253f80110c7b20bc33b8ac17778ff9c3ec8cf10ebc6ffa0-init/diff:/var/lib/docker/overlay2/6cd0372e16ff0cd4dc08cf47d1557148c9dde8077bdb2ba32c397d804acab922/diff:/var/lib/docker/overlay2/892fc2fc3e3a30552a2ee784ca11daa48f6d205ad9949202488866d486de3350/diff:/var/lib/docker/overlay2/3d3a17ed4b559b1a153431e83328d9fb987bfe786ea1e6e7534ce177ccc0cee8/diff:/var/lib/docker/overlay2/34bbeacecc0c71c3733db31bd4cf1fdb110d65cc0c115d5f769f23748f22bd26/diff:/var/lib/docker/overlay2/a764bc9d992c57c811650a99a4d79c328ca925b602f54636627bf69bde6bceaa/diff:/var/lib/docker/overlay2/d65d0b8bbf6171b0755194312cd22e80749905a5c43521cb7e23bf260eeb8eaa/diff:/var/lib/docker/overlay2/5fe1c2c5b8bdde3183bb3764a54f3648b20a099bf981f4532d1dabedac51eb7b/diff",
                "MergedDir": "/var/lib/docker/overlay2/ae9a3ff1106252c1e253f80110c7b20bc33b8ac17778ff9c3ec8cf10ebc6ffa0/merged",
                "UpperDir": "/var/lib/docker/overlay2/ae9a3ff1106252c1e253f80110c7b20bc33b8ac17778ff9c3ec8cf10ebc6ffa0/diff",
                "WorkDir": "/var/lib/docker/overlay2/ae9a3ff1106252c1e253f80110c7b20bc33b8ac17778ff9c3ec8cf10ebc6ffa0/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "387dccaa4d93",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "80/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "NGINX_VERSION=1.27.0",
                "NJS_VERSION=0.8.4",
                "NJS_RELEASE=2~bookworm",
                "PKG_RELEASE=2~bookworm"
            ],
            "Cmd": [
                "nginx",
                "-g",
                "daemon off;"
            ],
            "Image": "nginx",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": [
                "/docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {
                "maintainer": "NGINX Docker Maintainers \u003cdocker-maint@nginx.com\u003e"
            },
            "StopSignal": "SIGQUIT"
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "7255ed7c456e16cd5265f382e096e9a9f0bdd8903ac232dbfa664dc4862d375f",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {
                "80/tcp": null
            },
            "SandboxKey": "/var/run/docker/netns/7255ed7c456e",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "2e1ae8d025001c9f55e51b6f17bfe8cec6179befa5b05fbcae062f18be075371",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:02",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "fe976da79748422091e1dab8f08b03b3cddc69cc9f85bb868628edaa30dac1ea",
                    "EndpointID": "2e1ae8d025001c9f55e51b6f17bfe8cec6179befa5b05fbcae062f18be075371",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:11:00:02",
                    "DriverOpts": null
                }
            }
        }
    }
]

```

По выводу команды определи и помести в отчёт

Размер контейнера

![7.png](Simple%20Docker/7.png)

Список замапленных портов

![9.png](Simple%20Docker/9.png)

ip контейнера.

![8.png](Simple%20Docker/8.png)

Останови докер контейнер через `docker stop [container_id|container_name]`.

![11.png](Simple%20Docker/11.png)

Проверь, что контейнер остановился через `docker ps`.

![12.png](Simple%20Docker/12.png)

Запусти докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду *run*.

![13.png](Simple%20Docker/13.png)

Проверь, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**.

![10.png](Simple%20Docker/10.png)

Перезапусти докер контейнер через `docker restart [container_id|container_name]`.

![15.png](Simple%20Docker/15.png)

Проверь любым способом, что контейнер запустился.

![14.png](Simple%20Docker/14.png)

## Part 2. Операции с контейнером

Прочитай конфигурационный файл *nginx.conf* внутри докер контейнера через команду *exec*.

![17.png](Simple%20Docker/17.png)

Создай на локальной машине файл *nginx.conf*.

- (Создаем файл через команду touch nginx.conf)

    ![19.png](Simple%20Docker/19.png)

Настрой в нем по пути */status* отдачу страницы статуса сервера **nginx**.

Скопируй созданный файл *nginx.conf* внутрь докер-образа через команду `docker cp`.

![20.png](Simple%20Docker/20.png)

Перезапусти **nginx** внутри докер-образа через команду *exec*.

![20.png](Simple%20Docker/20%201.png)

Проверь, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**.

![21.png](Simple%20Docker/21.png)

![18.png](Simple%20Docker/18.png)

Экспортируй контейнер в файл *container.tar* через команду *export*.

![23.png](Simple%20Docker/23.png)

Останови контейнер.

![24.png](Simple%20Docker/24.png)

Удали образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры.

![25.png](Simple%20Docker/25.png)

Удали остановленный контейнер.

![26.png](Simple%20Docker/26.png)

Импортируй контейнер обратно через команду *import*.

```bash
docker import -c 'cmd ["nginx", "-g", "daemon off;"]' -c 'ENTRYPOINT ["/docker-entrypoint.sh"]' ./container.tar nginx 
```

![22.png](Simple%20Docker/22.png)

Запусти импортированный контейнер.

![30.png](Simple%20Docker/30.png)

Проверь, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**.

![28.png](Simple%20Docker/28.png)

![27.png](Simple%20Docker/27.png)

## Part 3. Мини веб-сервер

Напиши мини-сервер на **C** и **FastCgi**, который будет возвращать простейшую страничку с надписью `Hello World!`.

Пишем простую программу на языке си

![31.png](Simple%20Docker/31.png)

Измененный nginx.conf где будут проксироваться все запросы 81 порта на 127.0.0.1:8080

![34.png](Simple%20Docker/34.png)

Запусти написанный мини-сервер через *spawn-fcgi* на порту 8080.

- Для начала нам нужно установить новый docker образ командой

    ![32.png](Simple%20Docker/32.png)

- Запускаем контейнер и затем устанавливаем следующие библиотеки

    ![33.png](Simple%20Docker/33.png)

    1. apt update
    2. apt install gcc
    3. apt-get install libfcgi-dev
    4. apt-get install spawn-fcgi
- Копируем наши файлы в докер, предварительно создав папку сервер для си файла

    ![40.png](Simple%20Docker/40.png)

- Компилируем

    ![36.png](Simple%20Docker/36.png)

- Запускаем сервер на порту 8080

    ![37.png](Simple%20Docker/37.png)

    ![38.png](Simple%20Docker/38.png)

Проверь, что в браузере по *localhost:81* отдается написанная тобой страничка.

![35.png](Simple%20Docker/35.png)

Положи файл *nginx.conf* по пути *./nginx/nginx.conf* (это понадобится позже).

![39.png](Simple%20Docker/39.png)

## Part 4. Свой докер

Напиши свой докер-образ, который:

1) собирает исходники мини сервера на FastCgi из [Части 3](https://www.notion.so/Simple-Docker-cf671c0324794fcd83cbc9904292c5b6?pvs=21);

2) запускает его на 8080 порту;

3) копирует внутрь образа написанный *./nginx/nginx.conf*;

4) запускает **nginx**.

***nginx** можно установить внутрь докера самостоятельно, а можно воспользоваться готовым образом с **nginx**'ом, как базовым.*

Создаем совй образ Docker на основе nginx

![44.png](Simple%20Docker/44.png)

Создаем баш скрипт. который будет компилировать на сервер

![43.png](Simple%20Docker/43.png)

Собираем наш  докер-образ через `docker build` при этом указав имя и тег.

![41.png](Simple%20Docker/41.png)

Проверяем через `docker images`, что все собралось корректно.

![42.png](Simple%20Docker/42.png)

Запускаем наш Docker образ

![49.png](Simple%20Docker/49.png)

Запусти собранный докер-образ с маппингом 81 порта на 80 на локальной машине и маппингом папки *./nginx* внутрь контейнера по адресу, где лежат конфигурационные файлы **nginx**'а (см. [Часть 2](https://www.notion.so/Simple-Docker-cf671c0324794fcd83cbc9904292c5b6?pvs=21)).

![51.png](Simple%20Docker/51.png)

Проверь, что по localhost:80 доступна страничка написанного мини сервера.

![52.png](Simple%20Docker/52.png)

![47.png](Simple%20Docker/47.png)

Допиши в *./nginx/nginx.conf* проксирование странички */status*, по которой надо отдавать статус сервера **nginx**.

![51.png](Simple%20Docker/51%201.png)

Перезапусти докер-образ.

![53.png](Simple%20Docker/53.png)

## Part 5. **Dockle**

Чтобы установить dockle нужно установить brew, если же он не установлен каким-то образом, то [[тык](https://www.notion.so/Homebrew-goinfre-af3acfc9cfee424481a8a08c204ff272?pvs=21)],  установка dockle [[тык](https://github.com/goodwithtech/dockle)]

Просканируй образ из предыдущего задания через `dockle [image_id|repository]`.

![54.png](Simple%20Docker/54.png)

Исправь образ так, чтобы при проверке через **dockle** не было ошибок и предупреждений.

Из предупреждений, вывелось что нету другого пользователя, добавим его

![63.png](Simple%20Docker/63.png)

Образ исправлен

![56.png](Simple%20Docker/56.png)

## Part 6. Базовый **Docker Compose**

Перед началом, нужно установить docker compose

```bash
brew install docker-compos
```

Останавливаем все контейнеры `docker stop [name]`

![57.png](Simple%20Docker/57.png)

Напиши файл *docker-compose.yml*, с помощью которого:

1) Подними докер-контейнер из [Части 5](https://www.notion.so/Simple-Docker-cf671c0324794fcd83cbc9904292c5b6?pvs=21) *(он должен работать в локальной сети, т.е. не нужно использовать инструкцию **EXPOSE** и мапить порты на локальную машину)*.

2) Подними докер-контейнер с **nginx**, который будет проксировать все запросы с 8080 порта на 81 порт первого контейнера.

Сервер

![63.png](Simple%20Docker/63.png)

![67.png](Simple%20Docker/67.png)

Замапь 8080 порт второго контейнера на 80 порт локальной машины.

![60.png](Simple%20Docker/60.png)

Докер с nginx

![64.png](Simple%20Docker/64.png)

Конфиг для проксирования

![66.png](Simple%20Docker/66.png)

![68.png](Simple%20Docker/68.png)

Останови все запущенные контейнеры.

![57.png](Simple%20Docker/57%201.png)

Собери и запусти проект с помощью команд `docker-compose build` и `docker-compose up`.

![61.png](Simple%20Docker/61.png)

![62.png](Simple%20Docker/62.png)

Проверь, что в браузере по *localhost:80* отдается написанная тобой страничка, как и ранее.

![58.png](Simple%20Docker/58.png)

![59.png](Simple%20Docker/59.png)
