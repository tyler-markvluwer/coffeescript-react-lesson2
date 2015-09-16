EventEmitter = require('events').EventEmitter # used to tell UI when to update

class TodoList extends EventEmitter
    constructor: (@list_name) ->
    #@list_name is a string
        @list_items = []

    ### new_item is a string. add_item adds a new item to the
        todo list. It does not check for duplicates ###
    add_item: (new_item) ->
        @list_items.push new_item
        @emit 'change'

    """
    looks through the list_items and delete all instances of
    item_to_delete
    """
    remove_item: (item_to_delete) ->
        @list_items = @list_items.filter (word) -> word isnt item_to_delete
        @emit 'change'

    """
    returns a reference to @list_items
    """
    get_items: () ->
        return @list_items

module.exports = TodoList