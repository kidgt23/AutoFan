package sample;
import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.scene.Scene;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.stage.Stage;
// imports above along with package sample.

public class Main1 extends Application { // main class

    public static void main(String[] args) {
        launch(args);
    } // main method

    @Override
    public void start(Stage stage) { // void start
        var controller = new DataController(); //
        var serialPort = SerialPortService.getSerialPort("COM3"); // serial port on my PC
        serialPort.addDataListener(controller); // datalisnter

        stage.setTitle("TEMP VALUES"); // title

        var now = System.currentTimeMillis(); // this shows current time in milliseconds.


        var xAxis = new NumberAxis("t", now, now + 50000, 10000); // creates the x-axis (which automatically updates)
        var yAxis = new NumberAxis("TEMP", 0, 1000, 0); // Y axis...

        var series = new XYChart.Series<>(controller.getDataPoints());
        var lineChart = new LineChart<>(xAxis, yAxis, FXCollections.singletonObservableList(series));
        lineChart.setTitle("TEMP VALUES");

        Scene scene = new Scene(lineChart, 800, 600); //

        stage.setScene(scene); //
        stage.show(); //
    }
}