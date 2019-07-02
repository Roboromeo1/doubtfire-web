angular.module("doubtfire.api.models.task-comment", [])
.factory("TaskComment", (resourcePlus) ->
  resourcePlus "/projects/:project_id/task_def_id/:task_definition_id/comments/:id", { id: "@id", project_id: "@project_id", task_definition_id: "@task_definition_id" }, {
    create_media: {
      method: "POST",
      headers: { 'Content-Type': undefined }
    }
  }
)

angular.module("doubtfire.api.models.discussion-comment", [])
.factory("DiscussionComment", (resourcePlus) ->
  result =
    getDiscussion: resourcePlus "/projects/:project_id/task_def_id/:task_definition_id/comments/:task_comment_id/discussion_comment", { project_id: "@project_id", task_definition_id: "@task_definition_id", task_comment_id: "@task_comment_id" }
    createDiscussion: resourcePlus "/projects/:project_id/task_def_id/:task_definition_id/discussion_comments", { project_id: "@project_id", task_definition_id: "@task_definition_id" }, {
      create_media: {
        method: "POST",
        headers: { 'Content-Type': undefined }
      }
    }
  result
)

