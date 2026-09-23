package com.google.j2objc.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: adaptations */
/* JADX WARN: Method from annotation default annotation not found: selector */
@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface ObjectiveCAdapterMethod {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Adaptation {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Adaptation[] f12760c = {new Enum("EXCEPTIONS_AS_ERRORS", 0), new Enum("RETURN_NATIVE_BOOLS", 1), new Enum("ACCEPT_NATIVE_BOOLS", 2), new Enum("RETURN_NATIVE_ENUMS", 3), new Enum("ACCEPT_NATIVE_ENUMS", 4), new Enum("RETURN_ADAPTER_PROTOCOLS", 5), new Enum("RETURN_LISTS_AS_NATIVE_ARRAYS", 6)};

        /* JADX INFO: Fake field, exist only in values array */
        Adaptation EF5;

        public static Adaptation valueOf(String str) {
            return (Adaptation) Enum.valueOf(Adaptation.class, str);
        }

        public static Adaptation[] values() {
            return (Adaptation[]) f12760c.clone();
        }
    }
}
