---
lang:   UA
title:  Шляхетні родичі
answer: ^Два шляхетні родичі$
ok:     Так значно краще
error:  
load:   prev
---

Отже, тепер у нас є список п'єс з Інтернету. Список був в форматі json. На щастя для нас Ruby люб'язно надає метод перетворення даних json на словник Ruby. Метод _get\_shakey_ зробив це за нас..

But since the structure of the json data is retained in the hash, it is still a bit difficult to read.
Let us write a method to display the plays nicely.

Але оскільки структура json-даних зберігається в словнику, її трохи важко читати. Тож ми напишемо метод для показу п'єс.

Якщо ти уважно вивчиш список п'єс, то побачиш, що він має наче гніздову структуру.
(Це досить поширено в даних, які ти отримуєш з Інтернету.) Виглядає це так:

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Щоб перерахувати п'єси, нам спочатку потрібно отримати доступ до верхнього елементу словника "Вільям Шекспір" по його назві.
Потім ми повинні __iterate ("крокувати")__ по кожному елементу за ним.

Ruby має метод для ітерації. Він називається __each__. Ми бачили це раніше, коли створювали нашу систему рейтингу книжок.

Все, що повертає метод __each__, передається блокові:

    s = get_shakey

    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }