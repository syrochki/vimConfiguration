# Vim Configuration by syrochki

![Vim](https://img.shields.io/badge/Vim-✓-green?style=flat-square)
![Neovim](https://img.shields.io/badge/Neovim-✓-green?style=flat-square)
![Plugins](https://img.shields.io/badge/Plugins-6-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)

Начальная конфигурация Vim для быстрого старта.

## ✨ Особенности

- **Быстрая настройка** - один скрипт для установки
- **Красивый интерфейс** - темы Gruvbox и Monokai Pro
- **Удобная навигация** - NERDTree и FZF для работы с файлами
- **Управление окнами** - полная поддержка `hjkl` навигации
- **Мощный поиск** - интеграция с Git и быстрый поиск по проекту
- **Производительность** - оптимизированная конфигурация

## 📦 Установка

### Требования

- **Vim** (версия 8.0+) или **Neovim**
- **Git**
- **curl** или **wget**

### Автоматическая установка

```bash
# Скачать и запустить скрипт установки
curl -fsSL https://raw.githubusercontent.com/Syrochki/vimConfiguration/main/install.sh | bash
```

### Ручная установка

```bash
# 1. Установить vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 2. Клонировать репозиторий
git clone https://github.com/Syrochki/vimConfiguration.git ~/.vim-config

# 3. Создать симлинк
ln -sf ~/.vim-config/.vimrc ~/.vimrc

# 4. Установить плагины
vim +PlugInstall +qall
```

## ⌨️ Горячие клавиши

### Файлы и навигация

| Комбинация | Действие |
|------------|----------|
| <kbd>Ctrl</kbd> + <kbd>n</kbd> | Открыть NERDTree |
| <kbd>Ctrl<kbd/> + <kbd>t</kbd> | Открыть/закрыть структуру файлов проекта |
| <kbd>Ctrl<kbd/> + <kbd>f</kbd> | Найти файл в структуре проекта |
| <kbd>Ctrl</kbd> + <kbd>p</kbd> | Поиск файлов (FZF) |
| <kbd>Space</kbd> + <kbd>g</kbd> | Поиск git-файлов |
| <kbd>Space</kbd> + <kbd>b</kbd> | Список буферов |
| <kbd>Space</kbd> + <kbd>l</kbd> | Поиск по строкам |

### Управление окнами

| Комбинация | Действие |
|------------|----------|
| <kbd>Ctrl</kbd> + <kbd>h</kbd> | Перейти в левое окно |
| <kbd>Ctrl</kbd> + <kbd>j</kbd> | Перейти в нижнее окно |
| <kbd>Ctrl</kbd> + <kbd>k</kbd> | Перейти в верхнее окно |
| <kbd>Ctrl</kbd> + <kbd>l</kbd> | Перейти в правое окно |
| <kbd>w</kbd> + <kbd>h</kbd> | Уменьшить ширину окна |
| <kbd>w</kbd> + <kbd>j</kbd> | Уменьшить высоту окна |
| <kbd>w</kbd> + <kbd>k</kbd> | Увеличить высоту окна |
| <kbd>w</kbd> + <kbd>l</kbd> | Увеличить ширину окна |

### Управление табами

| Комбинация | Действие |
|------------|----------|
| <kbd>Space</kbd> + <kbd>1-9</kbd> | Перейти к табу 1-9 |

## 🛠 Плагины

- **[NERDTree](https://github.com/preservim/nerdtree)** - Файловый менеджер
- **[vim-polyglot](https://github.com/sheerun/vim-polyglot)** - Подсветка синтаксиса
- **[lightline.vim](https://github.com/itchyny/lightline.vim)** - Статусбар
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** - Git интеграция
- **[fzf](https://github.com/junegunn/fzf)** - Быстрый поиск
- **[Gruvbox](https://github.com/morhetz/gruvbox)** - Цветовая схема

## ⚙️ Настройки

### Основные

```vim
set number                " Номера строк
set cursorline            " Подсветка текущей строки
set termguicolors         " 24-битные цвета
set expandtab             " Табы как пробелы
set tabstop=4             " Ширина таба = 4 пробела
set shiftwidth=4          " Отступ = 4 пробела
```

### Цветовые схемы

По умолчанию используется **Gruvbox**:

```vim
colorscheme gruvbox
set background=dark
```

Доступные схемы:
- `gruvbox` (по умолчанию)
- `monokai-pro`

## 🚀 Быстрый старт

1. **Откройте Vim**: `vim`
2. **Откройте NERDTree**: <kbd>Ctrl</kbd> + <kbd>n</kbd>
3. **Найдите файл**: <kbd>Ctrl</kbd> + <kbd>p</kbd>
4. **Переключайтесь между окнами**: <kbd>Ctrl</kbd> + <kbd>h/j/k/l</kbd>

## ❓ Решение проблем

### Цвета выглядят неправильно

Убедитесь, что терминал поддерживает 24-битные цвета:

```bash
echo $TERM
# Должно быть xterm-256color или similar
```

### Плагины не устанавливаются

```bash
vim +PlugClean +PlugInstall +qall
```

### NERDTree не открывается

Проверьте статус плагинов:

```vim
:PlugStatus
```


## 📝 Лицензия

Этот проект распространяется под лицензией MIT. См. файл [LICENSE](LICENSE) для подробностей.

## 👤 Автор

**syrochki**

- GitHub: [@syrochki](https://github.com/syrochki)
- Репозиторий: [vimConfiguration](https://github.com/syrochki/vimConfiguration)

---

⭐ <- :)))
