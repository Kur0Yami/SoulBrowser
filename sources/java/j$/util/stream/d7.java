package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d7 {
    public static final d7 DOUBLE_VALUE;
    public static final d7 INT_VALUE;
    public static final d7 LONG_VALUE;
    public static final d7 REFERENCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ d7[] f21404a;

    public static d7 valueOf(String str) {
        return (d7) Enum.valueOf(d7.class, str);
    }

    public static d7[] values() {
        return (d7[]) f21404a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.util.stream.d7] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.util.stream.d7] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.util.stream.d7] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.d7] */
    static {
        ?? r0 = new Enum("REFERENCE", 0);
        REFERENCE = r0;
        ?? r1 = new Enum("INT_VALUE", 1);
        INT_VALUE = r1;
        ?? r3 = new Enum("LONG_VALUE", 2);
        LONG_VALUE = r3;
        ?? r5 = new Enum("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = r5;
        f21404a = new d7[]{r0, r1, r3, r5};
    }
}
