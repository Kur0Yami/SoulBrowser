package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class i8 {
    public static final i8 MAYBE_MORE;
    public static final i8 NO_MORE;
    public static final i8 UNLIMITED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ i8[] f21438a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.util.stream.i8] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.util.stream.i8] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.util.stream.i8] */
    static {
        ?? r0 = new Enum("NO_MORE", 0);
        NO_MORE = r0;
        ?? r1 = new Enum("MAYBE_MORE", 1);
        MAYBE_MORE = r1;
        ?? r3 = new Enum("UNLIMITED", 2);
        UNLIMITED = r3;
        f21438a = new i8[]{r0, r1, r3};
    }

    public static i8 valueOf(String str) {
        return (i8) Enum.valueOf(i8.class, str);
    }

    public static i8[] values() {
        return (i8[]) f21438a.clone();
    }
}
