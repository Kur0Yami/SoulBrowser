package j$.time;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d implements j$.time.temporal.n, j$.time.temporal.o {
    public static final d FRIDAY;
    public static final d MONDAY;
    public static final d SATURDAY;
    public static final d SUNDAY;
    public static final d THURSDAY;
    public static final d TUESDAY;
    public static final d WEDNESDAY;

    /* renamed from: a, reason: collision with root package name */
    public static final d[] f21182a;
    public static final /* synthetic */ d[] b;

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, j$.time.d] */
    static {
        ?? r0 = new Enum("MONDAY", 0);
        MONDAY = r0;
        ?? r1 = new Enum("TUESDAY", 1);
        TUESDAY = r1;
        ?? r3 = new Enum("WEDNESDAY", 2);
        WEDNESDAY = r3;
        ?? r5 = new Enum("THURSDAY", 3);
        THURSDAY = r5;
        ?? r7 = new Enum("FRIDAY", 4);
        FRIDAY = r7;
        ?? r9 = new Enum("SATURDAY", 5);
        SATURDAY = r9;
        ?? r11 = new Enum("SUNDAY", 6);
        SUNDAY = r11;
        b = new d[]{r0, r1, r3, r5, r7, r9, r11};
        f21182a = values();
    }

    public static d K(int i) {
        if (i < 1 || i > 7) {
            throw new RuntimeException("Invalid value for DayOfWeek: " + i);
        }
        return f21182a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.DAY_OF_WEEK : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return rVar.range();
        }
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.DAYS;
        }
        return j$.time.temporal.s.c(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(getValue(), j$.time.temporal.a.DAY_OF_WEEK);
    }
}
