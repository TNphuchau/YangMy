package wedding.yangmy.entity;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table (name = "user")
public class User{
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

}
