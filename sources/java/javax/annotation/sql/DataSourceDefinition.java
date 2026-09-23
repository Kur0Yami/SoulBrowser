package javax.annotation.sql;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: databaseName */
/* JADX WARN: Method from annotation default annotation not found: description */
/* JADX WARN: Method from annotation default annotation not found: initialPoolSize */
/* JADX WARN: Method from annotation default annotation not found: isolationLevel */
/* JADX WARN: Method from annotation default annotation not found: loginTimeout */
/* JADX WARN: Method from annotation default annotation not found: maxIdleTime */
/* JADX WARN: Method from annotation default annotation not found: maxPoolSize */
/* JADX WARN: Method from annotation default annotation not found: maxStatements */
/* JADX WARN: Method from annotation default annotation not found: minPoolSize */
/* JADX WARN: Method from annotation default annotation not found: password */
/* JADX WARN: Method from annotation default annotation not found: portNumber */
/* JADX WARN: Method from annotation default annotation not found: properties */
/* JADX WARN: Method from annotation default annotation not found: serverName */
/* JADX WARN: Method from annotation default annotation not found: transactional */
/* JADX WARN: Method from annotation default annotation not found: url */
/* JADX WARN: Method from annotation default annotation not found: user */
@Target({ElementType.TYPE})
@Repeatable(DataSourceDefinitions.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface DataSourceDefinition {
}
