import java.io.*;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;

public class CSVProcessor {
    public static void main(String[] args) {
        String inputDirectory = "C:\\work";  // 读取文件的目录
        String outputFilePath = "C:\\work\\result.csv";  // 输出文件路径

        try {
            // 获取目录下的所有 CSV 文件
            List<Path> csvFiles = getCsvFiles(inputDirectory);

            // 存放结果的列表
            List<String[]> emptyFieldRows = new ArrayList<>();

            // 遍历每个 CSV 文件
            for (Path csvFile : csvFiles) {
                System.out.println("Processing file: " + csvFile.getFileName());
                List<String[]> rowsWithEmptyFields = processCsvFile(csvFile);
                emptyFieldRows.addAll(rowsWithEmptyFields);
            }

            // 将结果写入 result.csv
            writeResultToCsv(outputFilePath, emptyFieldRows);
            System.out.println("Processing completed. Results written to: " + outputFilePath);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 获取目录下的所有 CSV 文件
    private static List<Path> getCsvFiles(String directory) throws IOException {
        List<Path> csvFiles = new ArrayList<>();
        Files.walk(Paths.get(directory))
             .filter(Files::isRegularFile)  // 只选取文件
             .filter(path -> path.toString().endsWith(".csv"))  // 筛选 .csv 文件
             .forEach(csvFiles::add);
        return csvFiles;
    }

    // 处理单个 CSV 文件，返回包含空字段的行
    private static List<String[]> processCsvFile(Path csvFile) throws IOException {
        List<String[]> rowsWithEmptyFields = new ArrayList<>();

        try (BufferedReader reader = Files.newBufferedReader(csvFile)) {
            String line;
            int lineNumber = 0;

            while ((line = reader.readLine()) != null) {
                lineNumber++;
                String[] columns = line.split(",");  // 假设 CSV 使用逗号分隔

                // 判断是否有空字段
                boolean hasEmptyField = false;
                for (String column : columns) {
                    if (column == null || column.trim().isEmpty()) {
                        hasEmptyField = true;
                        break;
                    }
                }

                // 如果有空字段，则记录该行
                if (hasEmptyField) {
                    String[] rowWithFileInfo = new String[columns.length + 2];
                    System.arraycopy(columns, 0, rowWithFileInfo, 0, columns.length);
                    rowWithFileInfo[columns.length] = csvFile.getFileName().toString();  // 添加文件名
                    rowWithFileInfo[columns.length + 1] = String.valueOf(lineNumber);   // 添加行号
                    rowsWithEmptyFields.add(rowWithFileInfo);
                }
            }
        }
        return rowsWithEmptyFields;
    }

    // 将结果写入到 result.csv
    private static void writeResultToCsv(String outputFilePath, List<String[]> rows) throws IOException {
        try (BufferedWriter writer = Files.newBufferedWriter(Paths.get(outputFilePath))) {
            for (String[] row : rows) {
                writer.write(String.join(",", row));
                writer.newLine();
            }
        }
    }
}