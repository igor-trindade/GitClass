package school.sptech.games.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class EntityNotFounded extends RuntimeException {
  public EntityNotFounded(String message) {
    super(message);
  }
}
