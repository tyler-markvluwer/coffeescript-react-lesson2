React = require('react')

# tag factories
div = React.createFactory('div')
ul = React.createFactory('ul')
li = React.createFactory('li')

TodoListView = React.createClass    
    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        @props.todo_list.on 'change', @update # TODO(tmarkvluwer): update name 'model'

    update: ->
        @forceUpdate()

    render: ->
        ul
            className: 'todo-ul'

            for list_item in @props.todo_list.get_items()
                li
                    className: 'todo-list-item'
                    list_item

module.exports = React.createFactory(TodoListView)
