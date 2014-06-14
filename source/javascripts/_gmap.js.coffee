
# Дождёмся загрузки API и готовности DOM.
init = ->
  
  # Создание экземпляра карты и его привязка к контейнеру с
  # заданным id ("map").
  myMap = new ymaps.Map("map",
    
    # При инициализации карты обязательно нужно указать
    # её центр и коэффициент масштабирования.
    center: [ # Москва
      55.76
      37.64
    ]
    zoom: 10
  )

  return
myMap = undefined
ymaps.ready init