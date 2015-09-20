React = require('react') # no ./ prefix
TodoList = require('./todoList')
TodoListView = require('./todoListView')

todoList = new TodoList('my_list')

window.todoList = todoList # makes list global and available on console

React.render(
    TodoListView # which component to mount
        todoList: todoList
    document.getElementById('view-mounting-point') # where to mount it
)