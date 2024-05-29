class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text: "Qaysi interfeys o'rnatilgan tizimlarda ma'lumotlar almashish uchun keng qo'llaniladi?",
    options: [
      const NavigationsOption(text: "HDMI", isCorrect: false),
      const NavigationsOption(text: "USB", isCorrect: true),
      const NavigationsOption(text: "VGA", isCorrect: false),
      const NavigationsOption(text: "DisplayPort", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "USB", isCorrect: true),
  ),
  NavigateQuestion(
    text: "O'rnatilgan tizimlarda sensorlarni o'qish uchun qaysi haydovchi turidan foydalaniladi?",
    options: [
      const NavigationsOption(text: "Audio driver", isCorrect: false),
      const NavigationsOption(text: "Network driver", isCorrect: false),
      const NavigationsOption(text: "Sensor driver", isCorrect: true),
      const NavigationsOption(text: "Video driver", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const NavigationsOption(text: "Sensor driver", isCorrect: true),
  ),
  NavigateQuestion(
    text: "I2C protokoli qanday xususiyatga ega?",
    options: [
      const NavigationsOption(text: "Tezkor ma'lumot uzatish", isCorrect: false),
      const NavigationsOption(text: "Ko'p qurilma boshqaruv", isCorrect: true),
      const NavigationsOption(text: "Yagona qurilma boshqaruv", isCorrect: false),
      const NavigationsOption(text: "Yuqori energiya sarfi", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Ko'p qurilma boshqaruv", isCorrect: true),
  ),
  NavigateQuestion(
    text: "SPI interfeysi nimani ta'minlaydi?",
    options: [
      const NavigationsOption(text: "Past energiya sarfi", isCorrect: false),
      const NavigationsOption(text: "Tezkor ma'lumot uzatish", isCorrect: true),
      const NavigationsOption(text: "Ko'p qurilma ulanishi", isCorrect: false),
      const NavigationsOption(text: "Audio ma'lumotlarini uzatish", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const NavigationsOption(text: "Tezkor ma'lumot uzatish", isCorrect: true),
  ),
  NavigateQuestion(
    text: "UART protokoli qanday ishlaydi?",
    options: [
      const NavigationsOption(text: "Parallel ma'lumot uzatish", isCorrect: false),
      const NavigationsOption(text: "Seriya ma'lumot uzatish", isCorrect: true),
      const NavigationsOption(text: "Tog'ri ulanishsiz ishlaydi", isCorrect: false),
      const NavigationsOption(text: "Ko'p kanalli aloqa", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(text: "Seriya ma'lumot uzatish", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Ethernet interfeysi qanday qurilmalarda keng qo'llaniladi?",
    options: [
      const NavigationsOption(text: "Mobil qurilmalar", isCorrect: false),
      const NavigationsOption(text: "O'yin konsollari", isCorrect: false),
      const NavigationsOption(text: "Tarmoqli serverlar", isCorrect: true),
      const NavigationsOption(text: "Shaxsiy kompyuterlar", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(text: "Tarmoqli serverlar", isCorrect: true),
  ),
  NavigateQuestion(
    text: "GPIO portlari o'rnatilgan tizimlarda qanday maqsadda ishlatiladi?",
    options: [
      const NavigationsOption(text: "Faqat video chiqish uchun", isCorrect: false),
      const NavigationsOption(text: "Faqat audio chiqish uchun", isCorrect: false),
      const NavigationsOption(text: "Umumiy maqsadli kirish/chiqish", isCorrect: true),
      const NavigationsOption(text: "Ma'lumotlarni saqlash", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const NavigationsOption(text: "Umumiy maqsadli kirish/chiqish", isCorrect: true),
  ),
  NavigateQuestion(
    text: "CAN interfeysi qaysi sohada eng ko'p qo'llaniladi?",
    options: [
      const NavigationsOption(text: "Telekommunikatsiya", isCorrect: false),
      const NavigationsOption(text: "Avtomobilsozlik", isCorrect: true),
      const NavigationsOption(text: "Maishiy texnika", isCorrect: false),
      const NavigationsOption(text: "Komp'yuter tarmoqlari", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "Avtomobilsozlik", isCorrect: true),
  ),
];
