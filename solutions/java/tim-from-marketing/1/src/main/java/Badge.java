class Badge {

    public String print(Integer id, String name, String department) {
        return formatId(id) + name + formatDepartment(department);
    }

    private String formatDepartment(String department) {
        return " - " + (department == null ? "OWNER" : department.toUpperCase());
    }

    private String formatId(Integer id) {
        return id == null ? "" : String.format("[%d] - ", id);
    }
}
