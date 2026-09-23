package com.google.gson;

/* loaded from: classes3.dex */
public interface ReflectionAccessFilter {

    /* renamed from: com.google.gson.ReflectionAccessFilter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public final FilterResult a(Class cls) {
            String name = cls.getName();
            if (!name.startsWith("java.") && !name.startsWith("javax.")) {
                return FilterResult.f;
            }
            return FilterResult.g;
        }

        public final String toString() {
            return "ReflectionAccessFilter#BLOCK_INACCESSIBLE_JAVA";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public final FilterResult a(Class cls) {
            String name = cls.getName();
            if (!name.startsWith("java.") && !name.startsWith("javax.")) {
                return FilterResult.f;
            }
            return FilterResult.h;
        }

        public final String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_JAVA";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public final FilterResult a(Class cls) {
            String name = cls.getName();
            if (!name.startsWith("android.") && !name.startsWith("androidx.") && !name.startsWith("java.") && !name.startsWith("javax.")) {
                return FilterResult.f;
            }
            return FilterResult.h;
        }

        public final String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_ANDROID";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public final FilterResult a(Class cls) {
            String name = cls.getName();
            if (!name.startsWith("android.") && !name.startsWith("androidx.") && !name.startsWith("java.") && !name.startsWith("javax.") && !name.startsWith("kotlin.") && !name.startsWith("kotlinx.") && !name.startsWith("scala.")) {
                return FilterResult.f;
            }
            return FilterResult.h;
        }

        public final String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_PLATFORM";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class FilterResult {

        /* renamed from: c, reason: collision with root package name */
        public static final FilterResult f12674c;
        public static final FilterResult f;
        public static final FilterResult g;
        public static final FilterResult h;
        public static final /* synthetic */ FilterResult[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.gson.ReflectionAccessFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.gson.ReflectionAccessFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.gson.ReflectionAccessFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.gson.ReflectionAccessFilter$FilterResult] */
        static {
            ?? r0 = new Enum("ALLOW", 0);
            f12674c = r0;
            ?? r1 = new Enum("INDECISIVE", 1);
            f = r1;
            ?? r3 = new Enum("BLOCK_INACCESSIBLE", 2);
            g = r3;
            ?? r5 = new Enum("BLOCK_ALL", 3);
            h = r5;
            i = new FilterResult[]{r0, r1, r3, r5};
        }

        public static FilterResult valueOf(String str) {
            return (FilterResult) Enum.valueOf(FilterResult.class, str);
        }

        public static FilterResult[] values() {
            return (FilterResult[]) i.clone();
        }
    }

    FilterResult a(Class cls);
}
