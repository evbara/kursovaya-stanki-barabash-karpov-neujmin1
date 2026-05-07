# kursovaya-stanki-barabash-karpov-neujmin1
Курсовой проект: учет станков и деффектов
## 📌  Описание проекта

### Для кого
Программа предназначена для:
- **Мастеров цеха** — фиксация поломок и дефектов
- **Технологов** — анализ частоты отказов станков
- **Руководства предприятия** — формирование отчетов по ремонтам

### Что делает
- Ведет полный учет станков (инвентарный номер, модель, дата ввода в эксплуатацию)
- Фиксирует дефекты с указанием даты, типа поломки, ответственного лица
- Позволяет формировать отчеты за любой период времени
- Хранит историю ремонтов и замены деталей

### Какую проблему решает
- Замена бумажных журналов на цифровую систему
- Исключение потери данных о поломках
- Быстрый поиск станка по инвентарному номеру
- Анализ самых частых дефектов для профилактики

###Структура проекта
kursovaya-stanki-barabash-karpov-neujmin1/
│
├── DE/                          # Основной проект WPF
│   ├── Pages/
│   │   ├── AuthPage.xaml        # Страница авторизации
│   │   ├── AuthPage.xaml.cs     # Логика входа в систему
│   │   ├── MainPage.xaml        # Главная панель управления
│   │   ├── MachinesPage.xaml    # Учет станков
│   │   ├── DefectsPage.xaml     # Регистрация дефектов
│   │   └── ReportsPage.xaml     # Формирование отчетов
│   │
│   ├── Models/
│   │   ├── Machine.cs           # Модель станка
│   │   ├── Defect.cs            # Модель дефекта
│   │   ├── User.cs              # Модель пользователя
│   │   └── RepairHistory.cs     # История ремонтов
│   │
│   ├── ViewModels/              # MVVM: бизнес-логика
│   ├── Services/
│   │   ├── DatabaseService.cs   # Работа с SQL Server
│   │   ├── AuthService.cs       # Аутентификация
│   │   └── ReportService.cs     # Генерация отчетов
│   │
│   ├── Helpers/
│   │   ├── ValidationHelper.cs  # Валидация данных
│   │   └── DateHelper.cs        # Работа с датами
│   │
│   ├── App.xaml                 # Точка входа приложения
│   └── App.xaml.cs              # Глобальные настройки
│
├── Database/
│   ├── Scripts/
│   │   ├── Furniture.sql     # Создание таблиц
├── Docs/
│   ├── Отчет.word
│   ├── README.md   
│


###Требования
💻 ОС: Windows 10/11 (x64)
🧰 .NET: .NET 6.0 SDK или новее
🗄️ СУБД: Microsoft SQL Server 2019+ (или LocalDB для разработки)
🛠️ IDE: Visual Studio 2022 с рабочей нагрузкой "Разработка классических приложений .NET"

###Пошаговая настройка
# 1. Клонировать репозиторий
git clone https://github.com/your-username/kursovaya-stanki-barabash-karpov-neujmin1.git
cd kursovaya-stanki-barabash-karpov-neujmin1

# 2. Открыть решение в Visual Studio
DE.sln

# 3. Настроить строку подключения в App.config / appsettings.json
#    Пример:
#    "ConnectionStrings": {
#      "DefaultConnection": "Server=localhost\\SQLEXPRESS;Database=MachineAccounting;Trusted_Connection=True;"
#    }

# 4. Применить миграции БД (или выполнить SQL-скрипты из /Database/Scripts)
#    Через Package Manager Console:
Update-Database

# 5. Запустить приложение
F5 или Debug → Start Debugging

###Авторы

| Участник        | Роль                       | Контакты               |
|-----------------|----------------------------|------------------------|
| Барабаш Евгения | Разработка БД, отчеты      | `barabash@example.com` |
| Карпов Георгий  | WPF-интерфейс, авторизация | `karpov@example.com`   |
| Неуймин Никита  | Бизнес-логика, тесты       | `neujmin@example.com`  |

GitHub: github.com/evbara


## 📄 Лицензия

Проект создан в учебных целях в рамках курсового проекта.  
Код распространяется под лицензией **MIT** — свободное использование с указанием авторства.
