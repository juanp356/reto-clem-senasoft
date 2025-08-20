package com.senasoft.reto.Repository;

import com.senasoft.reto.Model.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users,Long> {
}
