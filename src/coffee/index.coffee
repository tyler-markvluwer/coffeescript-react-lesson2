React = require('react') # no ./ prefix
TodoList = require('./todoList')
TodoListView = require('./todoListView')

todoList = new TodoList('my_list')
todoList2 = new TodoList('second_list')

window.todoList = todoList # makes list global and available on console
window.todoList2 = todoList2 # makes list global and available on console

React.render(
    TodoListView # which component to mount
        todoList: todoList
    document.getElementById('view-mounting-point') # where to mount it
)