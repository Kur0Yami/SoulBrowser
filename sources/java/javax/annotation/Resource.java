package javax.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: authenticationType */
/* JADX WARN: Method from annotation default annotation not found: description */
/* JADX WARN: Method from annotation default annotation not found: lookup */
/* JADX WARN: Method from annotation default annotation not found: mappedName */
/* JADX WARN: Method from annotation default annotation not found: name */
/* JADX WARN: Method from annotation default annotation not found: shareable */
/* JADX WARN: Method from annotation default annotation not found: type */
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD})
@Repeatable(Resources.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface Resource {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class AuthenticationType {

        /* renamed from: c, reason: collision with root package name */
        public static final AuthenticationType f21528c;
        public static final /* synthetic */ AuthenticationType[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, javax.annotation.Resource$AuthenticationType] */
        static {
            ?? r0 = new Enum("CONTAINER", 0);
            f21528c = r0;
            f = new AuthenticationType[]{r0, new Enum("APPLICATION", 1)};
        }

        public static AuthenticationType valueOf(String str) {
            return (AuthenticationType) Enum.valueOf(AuthenticationType.class, str);
        }

        public static AuthenticationType[] values() {
            return (AuthenticationType[]) f.clone();
        }
    }
}
