# AutoFan Project 
The following repository is projects that are both personal and from school used for the purpose of education and learning. For the portfoilo website the actual website is not live so I have attached the code here and will attach some photos of the website.

# Project
I developed an automatic fan that activates based on specific air temperature and moisture levels, utilizing the Grove Beginner Kit, including the DHT 11 sensor and the OLED display. This project was inspired by a need for a cooler environment in my room and ideas from the Arduino start website and my past courses

Context:
This small-scale project aims at a significant goal: improving environmental conditions in line with the Sustainable Development Goals (SDGs) to reduce carbon footprints. While basic in its current form, using a battery pack and Grove board, there's potential for future enhancements, such as eco-friendly materials and green energy sources like solar or hydro power.

Technical Requirements:
Connection to the Grove board via integrated MOSFET and pins.
Power transmission from the battery pack to the fan.
Ability to display temperature or moisture readings on the OLED screen.
Autonomous fan operation based on DHT 11 and Capacitive sensor readings.
Emergency turn-off feature via a D6 button.
Capability to send data from Arduino to Java for graphical representation.
Fan operation controlled via the D2 pin and specified in the code.
Component List:
Arduino Grove Board: Central device for integrating sensors.
DHT 11/22 Sensor: Measures room temperature and humidity, connected to the D3 pin.
Capacitive Moisture Sensor: Reads air moisture levels.
Battery Pack: Powers the fan, connected through a MOSFET.
MOSFET: Integrates the battery pack, D2 pin, and fan.
Fan: Mini fan operating between 6v-12v, activated based on sensor data.
Red LED: Indicator for the fan's operation and emergency stop signal.
Procedure:
Motivated by my own experience of a hot room and the desire for a self-regulating cooling solution, I combined a mini fan with components from my kit and programming insights from lab sources. The project aligns with environmental sustainability principles by enabling the fan to autonomously adjust its operation, reducing energy usage.

This summary encapsulates the project's motivation, technical aspects, and the potential for future sustainable development.
