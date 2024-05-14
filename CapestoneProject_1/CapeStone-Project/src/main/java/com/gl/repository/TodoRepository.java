package com.gl.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gl.entity.Todo;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Long>{

}
