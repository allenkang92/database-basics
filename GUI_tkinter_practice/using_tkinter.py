import sqlite3
from tkinter import *
from tkinter import messagebox

# 데이터베이스 연결 (university.db 사용)
conn = sqlite3.connect('university.db')
c = conn.cursor()

# 학생 추가 함수
def add_student():
    student_id = entry_id.get()
    name = entry_name.get()
    dept = entry_dept.get()
    year = entry_year.get()

    if student_id == "" or name == "" or year == "":
        messagebox.showwarning("입력 오류", "필수 필드를 입력하세요!")
        return

    try:
        c.execute("INSERT INTO 학생 (학번, 이름, 학과, 학년) VALUES (?, ?, ?, ?)", (student_id, name, dept, year))
        conn.commit()
        entry_id.delete(0, END)
        entry_name.delete(0, END)
        entry_dept.delete(0, END)
        entry_year.delete(0, END)
        load_students()
    except sqlite3.IntegrityError:
        messagebox.showerror("오류", "이미 존재하는 학번입니다.")

# 학생 불러오기 함수
def load_students():
    listbox_students.delete(0, END)
    c.execute("SELECT * FROM 학생")
    rows = c.fetchall()
    for row in rows:
        listbox_students.insert(END, f"학번: {row[0]}, 이름: {row[1]}, 학과: {row[2]}, 학년: {row[3]}")

# GUI 창 생성
root = Tk()
root.title("학생 관리 프로그램")

# 학번 입력 필드
label_id = Label(root, text="학번:")
label_id.grid(row=0, column=0, padx=10, pady=10)
entry_id = Entry(root, width=30)
entry_id.grid(row=0, column=1, padx=10, pady=10)

# 이름 입력 필드
label_name = Label(root, text="이름:")
label_name.grid(row=1, column=0, padx=10, pady=10)
entry_name = Entry(root, width=30)
entry_name.grid(row=1, column=1, padx=10, pady=10)

# 학과 입력 필드
label_dept = Label(root, text="학과:")
label_dept.grid(row=2, column=0, padx=10, pady=10)
entry_dept = Entry(root, width=30)
entry_dept.grid(row=2, column=1, padx=10, pady=10)

# 학년 입력 필드
label_year = Label(root, text="학년:")
label_year.grid(row=3, column=0, padx=10, pady=10)
entry_year = Entry(root, width=30)
entry_year.grid(row=3, column=1, padx=10, pady=10)

# 추가 버튼
button_add = Button(root, text="추가", command=add_student)
button_add.grid(row=4, column=1, padx=10, pady=10, sticky=W)

# 학생 목록 리스트
listbox_students = Listbox(root, width=50, height=10)
listbox_students.grid(row=5, column=0, columnspan=2, padx=10, pady=10)

# 프로그램 시작 시 학생 목록 불러오기
load_students()

root.mainloop()

# 데이터베이스 연결 종료
conn.close()
