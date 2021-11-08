module NotesHelper
  def assign_note_user(note, creator)
    note.user = creator
    note
  end

  def note_priority(priority)
    return '<span class="badge badge-info">Low</span>'.html_safe if priority == 'low'
    return '<span class="badge badge-warning">Medium</span>'.html_safe if priority == 'medium'
    return '<span class="badge badge-danger">Hight</span>'.html_safe if priority == 'hight'
  end
end
