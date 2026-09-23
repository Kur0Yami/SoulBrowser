package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.CharMatcher;
import java.io.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class CaseFormat {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ CaseFormat[] f12151c;

    /* JADX INFO: Fake field, exist only in values array */
    CaseFormat EF0;

    /* renamed from: com.google.common.base.CaseFormat$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum AnonymousClass1 extends CaseFormat {
    }

    /* renamed from: com.google.common.base.CaseFormat$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum AnonymousClass2 extends CaseFormat {
    }

    /* renamed from: com.google.common.base.CaseFormat$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum AnonymousClass3 extends CaseFormat {
    }

    /* renamed from: com.google.common.base.CaseFormat$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum AnonymousClass4 extends CaseFormat {
    }

    /* renamed from: com.google.common.base.CaseFormat$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum AnonymousClass5 extends CaseFormat {
    }

    /* loaded from: classes3.dex */
    public static final class StringConverter extends Converter<String, String> implements Serializable {
        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof StringConverter)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "null.converterTo(null)";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Enum r0 = new Enum("LOWER_HYPHEN", 0);
        Enum r1 = new Enum("LOWER_UNDERSCORE", 1);
        new CharMatcher.InRange('A', 'Z');
        Enum r3 = new Enum("LOWER_CAMEL", 2);
        new CharMatcher.InRange('A', 'Z');
        f12151c = new CaseFormat[]{r0, r1, r3, new Enum("UPPER_CAMEL", 3), new Enum("UPPER_UNDERSCORE", 4)};
    }

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) f12151c.clone();
    }
}
