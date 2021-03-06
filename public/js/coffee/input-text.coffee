traderbot.directive 'tbInputText', [
  ->
    return {
      restrict: 'E'

      replace: true

      templateUrl: 'input-text-tpl'

      scope:
        disableEdit: '='
        onSave: '='
        value: '='

      link: (scope, element, attr) ->

        scope.isEditing = false
        scope.buttonLabel = 'Edit'

        scope.toggleEdit = ->
          if scope.isEditing
            scope.buttonLabel = 'Edit'
            if scope.onSave
              scope.onSave scope.value
          else
            scope.buttonLabel = 'Save'

          scope.isEditing = !scope.isEditing

    }
]
