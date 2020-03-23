Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ОстаткиМатериалов
	Движения.ОстаткиМатериалов.Записывать = Истина;
	Для Каждого ТекСтрокаПереченьНоменклатуры из ПереченьНоменклатуры Цикл
		Если ТекСтрокаПереченьНоменклатуры.Номенклатура.ВидНоменклатуры = Перечисления.ВидыНоменклатуры.Материал Тогда
			//Регистр ОстаткиМатериалов Расход
			Движение = Движения.ОстаткиМатериалов.Добавить();
			Движение.Период = Дата;
			Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
			Движение.Материал = ТекСтрокаПереченьНоменклатуры.Номенклатура;
			Движение.Склад = Склад;
			Движение.Количество = ТекСтрокаПереченьНоменклатуры.Количество;
			
			//Регистр СтоимостьМатериалов Расход
			Движение = Движения.СтоимостьМатериалов.Добавить();
			Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
			Движение.Период = Дата;
			Движение.Материал = ТекСтрокаПереченьНоменклатуры.Номенклатура;
			Движение.Стоимость = ТекСтрокаПереченьНоменклатуры.Количество * ТекСтрокаПереченьНоменклатуры.Стоимость;
		КонецЕсли;
	КонецЦикла;
	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры