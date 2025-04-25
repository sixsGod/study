import java.util.ArrayList;
import java.util.Scanner;

// 学生管理系统

class Student {
    private int id;
    private String name;
    private int age;

    public Student(int id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Student{id=" + id + ", name='" + name + "', age=" + age + "}";
    }
}

public class case01 {
    private static ArrayList<Student> students = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        while (true) {
            System.out.println("\n学生管理系统");
            System.out.println("1. 添加学生");
            System.out.println("2. 查看所有学生");
            System.out.println("3. 修改学生信息");
            System.out.println("4. 删除学生");
            System.out.println("5. 退出");
            System.out.print("请选择操作: ");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    addStudent();
                    break;
                case 2:
                    viewStudents();
                    break;
                case 3:
                    updateStudent();
                    break;
                case 4:
                    deleteStudent();
                    break;
                case 5:
                    System.out.println("退出系统。");
                    return;
                default:
                    System.out.println("无效选择，请重新输入。");
            }
        }
    }

    private static void addStudent() {
        System.out.print("输入学生ID: ");
        int id = scanner.nextInt();
        System.out.print("输入学生姓名: ");
        String name = scanner.next();
        System.out.print("输入学生年龄: ");
        int age = scanner.nextInt();
        students.add(new Student(id, name, age));
        System.out.println("学生添加成功！");
    }

    private static void viewStudents() {
        if (students.isEmpty()) {
            System.out.println("没有学生信息。");
        } else {
            for (Student student : students) {
                System.out.println(student);
            }
        }
    }

    private static void updateStudent() {
        System.out.print("输入要修改的学生ID: ");
        int id = scanner.nextInt();
        for (Student student : students) {
            if (student.getId() == id) {
                System.out.print("输入新的姓名: ");
                String name = scanner.next();
                System.out.print("输入新的年龄: ");
                int age = scanner.nextInt();
                student.setName(name);
                student.setAge(age);
                System.out.println("学生信息修改成功！");
                return;
            }
        }
        System.out.println("未找到该学生。");
    }

    private static void deleteStudent() {
        System.out.print("输入要删除的学生ID: ");
        int id = scanner.nextInt();
        for (Student student : students) {
            if (student.getId() == id) {
                students.remove(student);
                System.out.println("学生删除成功！");
                return;
            }
        }
        System.out.println("未找到该学生。");
    }
}