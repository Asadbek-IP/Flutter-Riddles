class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
 StateQuestion(
    text: "O'rnatilgan tizimlar uchun eng ko'p ishlatiladigan dasturlash tili qaysi?",
    options: [
      const StateOption(text: "Python", isCorrect: false),
      const StateOption(text: "JavaScript", isCorrect: false),
      const StateOption(text: "C", isCorrect: true),
      const StateOption(text: "Java", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "C", isCorrect: true),
  ),
  StateQuestion(
    text: "O'rnatilgan tizimlarda dasturlashda qaysi xususiyat eng muhim hisoblanadi?",
    options: [
      const StateOption(text: "Tezlik", isCorrect: true),
      const StateOption(text: "Ko'p funksiyalilik", isCorrect: false),
      const StateOption(text: "Grafika", isCorrect: false),
      const StateOption(text: "O'yinlar", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Tezlik", isCorrect: true),
  ),
  StateQuestion(
    text: "RTOS tizimida qaysi xususiyat eng muhimdir?",
    options: [
      const StateOption(text: "Chiroyli interfeys", isCorrect: false),
      const StateOption(text: "Vaqtga sezgirlik", isCorrect: true),
      const StateOption(text: "Foydalanuvchi qulayligi", isCorrect: false),
      const StateOption(text: "Multimedia qo'llab-quvvatlashi", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Vaqtga sezgirlik", isCorrect: true),
  ),
  StateQuestion(
    text: "O'rnatilgan tizimlar uchun xotira boshqaruvini yaxshilash uchun qaysi usuldan foydalaniladi?",
    options: [
      const StateOption(text: "Garbage collection", isCorrect: false),
      const StateOption(text: "Dynamic allocation", isCorrect: false),
      const StateOption(text: "Static allocation", isCorrect: true),
      const StateOption(text: "Automatic scaling", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Static allocation", isCorrect: true),
  ),
  StateQuestion(
    text: "O'rnatilgan tizimlar uchun qaysi dasturiy ta'minot ishlab chiqish usuli ko'proq qo'llaniladi?",
    options: [
      const StateOption(text: "Agile metodologiyasi", isCorrect: false),
      const StateOption(text: "Waterfall metodologiyasi", isCorrect: false),
      const StateOption(text: "V-model", isCorrect: true),
      const StateOption(text: "Spiral model", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "V-model", isCorrect: true),
  ),
  StateQuestion(
    text: "O'rnatilgan tizimlarda ishlatiladigan dasturlash tillaridan biri bo'lmagan variantni toping:",
    options: [
      const StateOption(text: "C", isCorrect: false),
      const StateOption(text: "Ada", isCorrect: false),
      const StateOption(text: "Assembly", isCorrect: false),
      const StateOption(text: "Ruby", isCorrect: true),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "Ruby", isCorrect: true),
  ),
  StateQuestion(
    text: "Interruptlar o'rnatilgan tizimlarda qanday maqsadlarda ishlatiladi?",
    options: [
      const StateOption(text: "Faqatgina tizimni qayta yuklash uchun", isCorrect: false),
      const StateOption(text: "Voqealar bilan boshqariladigan dasturlarni amalga oshirish uchun", isCorrect: true),
      const StateOption(text: "Dasturlarni yopish uchun", isCorrect: false),
      const StateOption(text: "Grafikani yaxshilash uchun", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "Voqealar bilan boshqariladigan dasturlarni amalga oshirish uchun", isCorrect: true),
  ),
  StateQuestion(
    text: "Dasturlashda 'low-level programming' nima uchun zarur bo'ladi?",
    options: [
      const StateOption(text: "Kodni yanada tezroq ishlashini ta'minlash uchun", isCorrect: true),
      const StateOption(text: "Kodni osonroq yozish uchun", isCorrect: false),
      const StateOption(text: "Dasturlashni o'rganish uchun", isCorrect: false),
      const StateOption(text: "Dastur interfeysini yaxshilash uchun", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "Kodni yanada tezroq ishlashini ta'minlash uchun", isCorrect: true),
  ),
];
