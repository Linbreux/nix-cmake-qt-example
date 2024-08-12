#include <QDebug>
#include <QDir>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <iostream>

#include <core.hpp>

int main(int argc, char *argv[]) {
  std::cout << core::greet();
  QGuiApplication app(argc, argv);
  QQmlApplicationEngine engine;

  engine.load(QUrl(QLatin1String("qrc:/qml/main.qml")));
  if (engine.rootObjects().isEmpty()) {
    return -1;
  }

  return app.exec();
}
