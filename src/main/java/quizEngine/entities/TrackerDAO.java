package quizEngine.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Superduo on 8/17/16.
 */
@Transactional
public interface TrackerDAO extends CrudRepository<Tracker, Long> {
}
