class WidgetQuestion {
  final int id;
  final String text;
  final List<WidgetOption> options;
  bool isLocked;
  WidgetOption? selectedWiidgetOption;
  WidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WidgetOption {
  final String? text;
  final bool? isCorrect;

  const WidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
 WidgetQuestion(
    text: "O'rnatilgan tizim nima?",
    options: [
      const WidgetOption(text: "Dastur va apparatni birlashtiruvchi maxsus maqsadli kompyuter tizimi", isCorrect: true),
      const WidgetOption(text: "Oddiy shaxsiy kompyuter", isCorrect: false),
      const WidgetOption(text: "Ma'lumotlarni qayta ishlash markazi", isCorrect: false),
      const WidgetOption(text: "Hech qaysi", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WidgetOption(text: "Dastur va apparatni birlashtiruvchi maxsus maqsadli kompyuter tizimi", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Mikrokontroller va mikroprosessor o'rtasidagi asosiy farq nima?",
    options: [
      const WidgetOption(text: "Mikrokontroller o'z ichiga xotira va kirish/chiqish portlarini oladi", isCorrect: true),
      const WidgetOption(text: "Mikroprosessor faqat dasturiy ta'minotni bajaradi", isCorrect: false),
      const WidgetOption(text: "Mikroprosessor katta hajmli dasturlar uchun ishlatiladi", isCorrect: false),
      const WidgetOption(text: "Har ikkisi ham bir xil", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const WidgetOption(text: "Mikrokontroller o'z ichiga xotira va kirish/chiqish portlarini oladi", isCorrect: true),
  ),
  WidgetQuestion(
    text: "RTOS (Real-Time Operating System) ning asosiy vazifasi nima?",
    options: [
      const WidgetOption(text: "Dasturlarni tez va samarali ishga tushirish", isCorrect: false),
      const WidgetOption(text: "Operatsion tizimni yangilash", isCorrect: false),
      const WidgetOption(text: "Dasturlarni muayyan vaqt ichida bajarishni kafolatlash", isCorrect: true),
      const WidgetOption(text: "Foydalanuvchi bilan o'zaro aloqani boshqarish", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const WidgetOption(text: "Dasturlarni muayyan vaqt ichida bajarishni kafolatlash", isCorrect: true),
  ),
  WidgetQuestion(
    text: "O'rnatilgan tizimlarni ishlab chiqishda qaysi dasturlash tili eng ko'p ishlatiladi?",
    options: [
      const WidgetOption(text: "Python", isCorrect: false),
      const WidgetOption(text: "Java", isCorrect: false),
      const WidgetOption(text: "C", isCorrect: true),
      const WidgetOption(text: "JavaScript", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const WidgetOption(text: "C", isCorrect: true),
  ),
  WidgetQuestion(
    text: "O'rnatilgan tizimlarda ishlatiladigan xotira turi qaysi?",
    options: [
      const WidgetOption(text: "SSD", isCorrect: false),
      const WidgetOption(text: "Hard disk", isCorrect: false),
      const WidgetOption(text: "EEPROM", isCorrect: true),
      const WidgetOption(text: "Blu-ray Disk", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const WidgetOption(text: "EEPROM", isCorrect: true),
  ),
  WidgetQuestion(
    text: "O'rnatilgan tizimlarda qaysi interfeys keng tarqalgan?",
    options: [
      const WidgetOption(text: "HDMI", isCorrect: false),
      const WidgetOption(text: "USB", isCorrect: true),
      const WidgetOption(text: "Ethernet", isCorrect: false),
      const WidgetOption(text: "VGA", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const WidgetOption(text: "USB", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Mikrokontrollerlardagi 'GPIO' nima uchun qo'llaniladi?",
    options: [
      const WidgetOption(text: "Grafik interfeysni boshqarish uchun", isCorrect: false),
      const WidgetOption(text: "Tarmoq protokollarini amalga oshirish uchun", isCorrect: false),
      const WidgetOption(text: "Kirish/chiqish portlarini boshqarish uchun", isCorrect: true),
      const WidgetOption(text: "Operatsion tizimni yuklash uchun", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const WidgetOption(text: "Kirish/chiqish portlarini boshqarish uchun", isCorrect: true),
  ),
  WidgetQuestion(
    text: "FPGA va CPLD o'rtasidagi asosiy farq nimada?",
    options: [
      const WidgetOption(text: "FPGA ko'proq moslashuvchan", isCorrect: true),
      const WidgetOption(text: "CPLD tezroq ishlaydi", isCorrect: false),
      const WidgetOption(text: "CPLD arzonroq", isCorrect: false),
      const WidgetOption(text: "FPGA faqat kichik loyihalar uchun ishlatiladi", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const WidgetOption(text: "FPGA ko'proq moslashuvchan", isCorrect: true),
  ),
];
