#!/bin/bash

# create todo.txt file if not exist
[ -f "todo.txt" ] || touch todo.txt

TODO_FILE="todo.txt"

add_task(){
    echo "$1" >> "$TODO_FILE"
    echo "Task added successfully"
}

remove_task(){
      sed -i "${1}d" "$TODO_FILE"

  echo "❌ Task #$1 removed"
}

show_list(){
 if [ ! -s "$TODO_FILE" ]; then
echo "📂 No todo list found!"
return
 fi
    echo "📝 Your To-Do List:"
    nl -w2 -s'. ' "$TODO_FILE"

}
case $1 in
add)
shift
add_task "$*"
;;
remove)
remove_task "$2"
;;
show)
show_list
;;
*)
echo "📘 Usage:"
    echo "./app.sh add \"Your task here\""
    echo "./app.sh remove [task_number]"
    echo "./app.sh show"
    ;;
esac
