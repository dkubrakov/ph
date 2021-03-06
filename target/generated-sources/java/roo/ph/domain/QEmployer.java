package roo.ph.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QEmployer is a Querydsl query type for Employer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QEmployer extends EntityPathBase<Employer> {

    private static final long serialVersionUID = -2007854485L;

    public static final QEmployer employer = new QEmployer("employer");

    public final StringPath address = createString("address");

    public final DateTimePath<java.util.Date> birthdate = createDateTime("birthdate", java.util.Date.class);

    public final SetPath<Contract, QContract> contracts = this.<Contract, QContract>createSet("contracts", Contract.class, QContract.class, PathInits.DIRECT2);

    public final EnumPath<roo.ph.domain.reference.Appointment> employeeStatus = createEnum("employeeStatus", roo.ph.domain.reference.Appointment.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath name = createString("name");

    public final StringPath phone = createString("phone");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QEmployer(String variable) {
        super(Employer.class, forVariable(variable));
    }

    public QEmployer(Path<? extends Employer> path) {
        super(path.getType(), path.getMetadata());
    }

    public QEmployer(PathMetadata metadata) {
        super(Employer.class, metadata);
    }

}

