package com.google.api.pathtemplate;

import com.google.auto.value.AutoValue;
import com.google.common.base.Splitter;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class PathTemplate {

    /* renamed from: com.google.api.pathtemplate.PathTemplate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12096a;

        static {
            int[] iArr = new int[SegmentKind.values().length];
            f12096a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12096a[5] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12096a[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12096a[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12096a[2] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12096a[3] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @AutoValue
    /* loaded from: classes3.dex */
    public static abstract class Segment {
        public abstract String a();

        public abstract SegmentKind b();

        public abstract String c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class SegmentKind {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SegmentKind[] f12097c = {new Enum("LITERAL", 0), new Enum("CUSTOM_VERB", 1), new Enum("WILDCARD", 2), new Enum("PATH_WILDCARD", 3), new Enum("BINDING", 4), new Enum("END_BINDING", 5)};

        /* JADX INFO: Fake field, exist only in values array */
        SegmentKind EF5;

        public static SegmentKind valueOf(String str) {
            return (SegmentKind) Enum.valueOf(SegmentKind.class, str);
        }

        public static SegmentKind[] values() {
            return (SegmentKind[]) f12097c.clone();
        }
    }

    static {
        Pattern.compile(":([^/*}{=]+)$");
        Pattern.compile("^(\\w+:)?//");
        Splitter.a('/').e();
        Pattern.compile("[_\\-\\.~]");
        Pattern.compile("\\}[_\\-\\.~]{2,}\\{");
        Pattern.compile("\\}\\{");
        Pattern.compile("\\}[^_\\-\\.~]\\{");
        Pattern.compile("\\}[_\\-\\.~]{1}");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PathTemplate)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        throw null;
    }
}
