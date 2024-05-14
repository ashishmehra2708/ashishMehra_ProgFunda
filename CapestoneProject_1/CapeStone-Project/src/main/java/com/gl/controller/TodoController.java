package com.gl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gl.entity.Todo;
import com.gl.service.TodoService;

@RestController
@RequestMapping("/api/todos")
public class TodoController {

	@Autowired
	private TodoService todoService;
	
	@PostMapping
	public ResponseEntity<Todo> createTodo(@RequestBody Todo todo){
		Todo savedTodo = todoService.createTodo(todo);
		return new ResponseEntity<>(savedTodo, HttpStatus.CREATED);
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Todo> getTodoById(@PathVariable("id") Long id){
		Todo todo=todoService.getTodoById(id);
		return ResponseEntity.ok(todo);
	}
		
	@GetMapping
	public ResponseEntity<List<Todo>> getAllTodos(){
		List<Todo> todo=todoService.getAllTodos();
		return ResponseEntity.ok(todo);
	}
	
	@PutMapping("{id}")
	public ResponseEntity<Todo> updtaeTodo(@PathVariable("id") Long id,@RequestBody Todo updatedTodo){
		Todo todo = todoService.updateTodo(id, updatedTodo);
		return ResponseEntity.ok(todo);
	}
	
	@DeleteMapping("{id}")
	public ResponseEntity<String> deleteTodo(@PathVariable("id") Long todo){
		todoService.deleteTodo(todo);
		return ResponseEntity.ok("Employee Deleted Successfully..!");
	}
	
}
