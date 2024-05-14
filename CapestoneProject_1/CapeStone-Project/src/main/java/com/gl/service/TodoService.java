package com.gl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.entity.Todo;
import com.gl.exception.ResourceNotFoundException;
import com.gl.repository.TodoRepository;

@Service
public class TodoService {
	
	@Autowired
	private TodoRepository todoRepository;
	
	public Todo createTodo(Todo todo) {
		return todoRepository.save(todo);
	}
	
	public Todo getTodoById(Long id) {
		return todoRepository.findById(id).orElseThrow(()->new ResourceNotFoundException("Todo activity not fount with Id"+id));
	}
	
	public List<Todo> getAllTodos(){
		return todoRepository.findAll();
	}
	
	public Todo updateTodo(Long id, Todo todoDetails) {
		Todo todo= todoRepository.findById(id).orElseThrow(()->new ResourceNotFoundException("Todo activity not fount with Id"+id));
		
		todo.setTodoTitle(todoDetails.getTodoTitle());
		todo.setTodoDescription(todoDetails.getTodoDescription());
		
		return todoRepository.save(todo);
	}
	
	public void deleteTodo(Long id) {
		Todo todo=todoRepository.findById(id).orElseThrow(()->new ResourceNotFoundException("Todo activity not fount with Id"+id));
		todoRepository.delete(todo);
	}
}