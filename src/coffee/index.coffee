React = require('react') # no ./ prefix
TodoList = require('./TodoList') # has ./ because local import
TodoListView = require('./TodoListView')

todoList = new TodoList('mylist') # creating instance

window.todoList = todoList # making instance global, and available on console.

React.render(
    TodoListView # which component to mount
        todo_list: todoList
    document.getElementById('app-mounting-point') # where to mount it
)