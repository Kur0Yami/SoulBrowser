package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class f0 {
    public static final f0 ALWAYS;
    public static final f0 EXCEEDS_PAD;
    public static final f0 NEVER;
    public static final f0 NORMAL;
    public static final f0 NOT_NEGATIVE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ f0[] f21197a;

    public static f0 valueOf(String str) {
        return (f0) Enum.valueOf(f0.class, str);
    }

    public static f0[] values() {
        return (f0[]) f21197a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.format.f0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.format.f0] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.format.f0] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.format.f0] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.format.f0] */
    static {
        ?? r0 = new Enum("NORMAL", 0);
        NORMAL = r0;
        ?? r1 = new Enum("ALWAYS", 1);
        ALWAYS = r1;
        ?? r3 = new Enum("NEVER", 2);
        NEVER = r3;
        ?? r5 = new Enum("NOT_NEGATIVE", 3);
        NOT_NEGATIVE = r5;
        ?? r7 = new Enum("EXCEEDS_PAD", 4);
        EXCEEDS_PAD = r7;
        f21197a = new f0[]{r0, r1, r3, r5, r7};
    }
}
