class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
   LayOutQuestion(
    text: "O'rnatilgan tizimlarni integratsiya qilishda qaysi usul eng ko'p ishlatiladi?",
    options: [
      const LayOutOption(text: "Ko'p qavatli integratsiya", isCorrect: false),
      const LayOutOption(text: "Big-Bang Integratsiyasi", isCorrect: false),
      const LayOutOption(text: "Inkremental integratsiya", isCorrect: true),
      const LayOutOption(text: "Foydalanuvchi integratsiyasi", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const LayOutOption(text: "Inkremental integratsiya", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Tizim sinovlarini o'tkazishda qaysi tur eng muhim hisoblanadi?",
    options: [
      const LayOutOption(text: "Foydalanuvchilar bilan testlash", isCorrect: false),
      const LayOutOption(text: "Unit test", isCorrect: false),
      const LayOutOption(text: "Integratsiya testi", isCorrect: true),
      const LayOutOption(text: "Tasviriy testlash", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Integratsiya testi", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Tizim xavfsizligini sinovdan o'tkazish uchun qaysi usuldan foydalaniladi?",
    options: [
      const LayOutOption(text: "Penetratsion testlash", isCorrect: true),
      const LayOutOption(text: "Stress testi", isCorrect: false),
      const LayOutOption(text: "Chidamlilik testi", isCorrect: false),
      const LayOutOption(text: "Funksional testlash", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Penetratsion testlash", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Qaysi jarayon o'rnatilgan tizimlarning ishlashini optimallashtirishda muhim ahamiyatga ega?",
    options: [
      const LayOutOption(text: "Komponentlarni qayta ishlash", isCorrect: false),
      const LayOutOption(text: "Tizimni qayta ishga tushirish", isCorrect: false),
      const LayOutOption(text: "Dasturiy ta'minotni yangilash", isCorrect: true),
      const LayOutOption(text: "Hardware sozlash", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const LayOutOption(text: "Dasturiy ta'minotni yangilash", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Tizimlarni sinovdan o'tkazishda qanday vosita ko'p qo'llaniladi?",
    options: [
      const LayOutOption(text: "Debugger", isCorrect: true),
      const LayOutOption(text: "Compiler", isCorrect: false),
      const LayOutOption(text: "Code editor", isCorrect: false),
      const LayOutOption(text: "IDE", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "Debugger", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Tizimlarni integratsiya qilishda qanday muammo tez-tez uchraydi?",
    options: [
      const LayOutOption(text: "Dasturiy ta'minotning muvofiqligi", isCorrect: true),
      const LayOutOption(text: "Elektr ta'minoti muammolari", isCorrect: false),
      const LayOutOption(text: "Interface dizayni", isCorrect: false),
      const LayOutOption(text: "Foydalanuvchi qo'llanmasi", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "Dasturiy ta'minotning muvofiqligi", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Tizimlarni sinovdan o'tkazish jarayonida nimalarni tekshirish kerak?",
    options: [
      const LayOutOption(text: "Faqat dasturiy ta'minot", isCorrect: false),
      const LayOutOption(text: "Faqat apparat", isCorrect: false),
      const LayOutOption(text: "Ham dasturiy, ham apparat", isCorrect: true),
      const LayOutOption(text: "Faqat foydalanuvchi interfeysi", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const LayOutOption(text: "Ham dasturiy, ham apparat", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Yangi integratsiyalangan tizimni qanday sinovdan o'tkazish tavsiya etiladi?",
    options: [
      const LayOutOption(text: "Foydalanuvchilar tomonidan sinovdan o'tkazish", isCorrect: false),
      const LayOutOption(text: "Dasturchilar tomonidan dastlabki sinov", isCorrect: true),
      const LayOutOption(text: "Tashqi audit", isCorrect: false),
      const LayOutOption(text: "Hech qanday sinov o'tkazmaslik", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Dasturchilar tomonidan dastlabki sinov", isCorrect: true),
  ),
];
