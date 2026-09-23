package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class b7 {
    public static final b7 OP;
    public static final b7 SPLITERATOR;
    public static final b7 STREAM;
    public static final b7 TERMINAL_OP;
    public static final b7 UPSTREAM_TERMINAL_OP;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ b7[] f21389a;

    public static b7 valueOf(String str) {
        return (b7) Enum.valueOf(b7.class, str);
    }

    public static b7[] values() {
        return (b7[]) f21389a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.util.stream.b7] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.util.stream.b7] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.util.stream.b7] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.b7] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.util.stream.b7] */
    static {
        ?? r0 = new Enum("SPLITERATOR", 0);
        SPLITERATOR = r0;
        ?? r1 = new Enum("STREAM", 1);
        STREAM = r1;
        ?? r3 = new Enum("OP", 2);
        OP = r3;
        ?? r5 = new Enum("TERMINAL_OP", 3);
        TERMINAL_OP = r5;
        ?? r7 = new Enum("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = r7;
        f21389a = new b7[]{r0, r1, r3, r5, r7};
    }
}
