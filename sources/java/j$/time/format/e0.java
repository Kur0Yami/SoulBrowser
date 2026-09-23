package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class e0 {
    public static final e0 LENIENT;
    public static final e0 SMART;
    public static final e0 STRICT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ e0[] f21196a;

    public static e0 valueOf(String str) {
        return (e0) Enum.valueOf(e0.class, str);
    }

    public static e0[] values() {
        return (e0[]) f21196a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.format.e0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.format.e0] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.format.e0] */
    static {
        ?? r0 = new Enum("STRICT", 0);
        STRICT = r0;
        ?? r1 = new Enum("SMART", 1);
        SMART = r1;
        ?? r3 = new Enum("LENIENT", 2);
        LENIENT = r3;
        f21196a = new e0[]{r0, r1, r3};
    }
}
