package com.codingdojo.lineup.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lineup.models.Schedule;

@Repository
public interface ScheduleRepository extends CrudRepository<Schedule, Long>{
	List<Schedule> findAll();
	
	@Query(value="SELECT * FROM schedules ORDER BY work_date ASC", nativeQuery=true)
	List<Schedule> findAllByOrderByWorkDateASC();
	
	@Query(value="SELECT * FROM schedules WHERE employee_id = ?1", nativeQuery=true)
	List<Schedule> findAllByEmployeeId(Long id);
	
	@Query(value="SELECT * FROM schedules WHERE work_date >= ?1 AND work_date < ?2", nativeQuery=true)
	List<Schedule> findByDate(LocalDate d1, LocalDate d2);
	
	
} 
