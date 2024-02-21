//2. Реализуйте класс для создания различных форматов документов (например, PDF, HTML, JSON).

// Для проектирования данной задачи выбрала паттерн "фабрика", он отлично подходит для создания различных форматов документов, так как этот паттерн позволяет делегировать операцию создания объектов подклассам и если в будущем потребуется добавить новый формат документа, можно просто создать новый подкласс фабрики и переопределить фабричный метод, не изменяя существующий код.

// Общий интерфейс для всех документов
abstract class Document {
  String get content;
}

abstract class DocumentFactory {
  // Пустой фабричный метод с общим интерфейсом продукта
  Document createDocument(String type);
}

// Конкретные реализации документов
class PdfDocument implements Document {
  @override
  String get content => 'PDF content';
}

class HtmlDocument implements Document {
  @override
  String get content => 'HTML content>';
}

class JsonDocument implements Document {
  @override
  String get content => '{"key": "JSON content"}';
}

// Конкретные фабрики для каждого типа документа
class PdfFactory extends DocumentFactory {
  @override
  Document createDocument(String type) {
    if (type == 'pdf') {
      return PdfDocument();
    }
    throw Exception('Invalid document type');
  }
}

class HtmlFactory extends DocumentFactory {
  @override
  Document createDocument(String type) {
    if (type == 'html') {
      return HtmlDocument();
    }
    throw Exception('Invalid document type');
  }
}

class JsonFactory extends DocumentFactory {
  @override
  Document createDocument(String type) {
    if (type == 'json') {
      return JsonDocument();
    }
    throw Exception('Invalid document type');
  }
}

void main() {
  DocumentFactory pdfFactory = PdfFactory();
  Document pdfDocument = pdfFactory.createDocument('pdf');
  print(pdfDocument.content);

  DocumentFactory htmlFactory = HtmlFactory();
  Document htmlDocument = htmlFactory.createDocument('html');
  print(htmlDocument.content);

  DocumentFactory jsonFactory = JsonFactory();
  Document jsonDocument = jsonFactory.createDocument('json');
  print(jsonDocument.content);
}