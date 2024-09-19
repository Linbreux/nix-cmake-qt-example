#include <core.hpp>
#include <iostream>

#include "appCore.h"

AppCore::AppCore(QObject *parent) : QObject(parent) {}

void AppCore::receiveFromQml() {
  // We increase the counter and send a signal with its value
  std::cout << "Greet from c++: " << core::greet() << "\n";
  ++m_counter;
  emit sendToQml(m_counter);
}
