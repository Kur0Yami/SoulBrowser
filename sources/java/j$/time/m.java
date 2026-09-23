package j$.time;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class m implements j$.time.temporal.n, j$.time.temporal.o {
    public static final m APRIL;
    public static final m AUGUST;
    public static final m DECEMBER;
    public static final m FEBRUARY;
    public static final m JANUARY;
    public static final m JULY;
    public static final m JUNE;
    public static final m MARCH;
    public static final m MAY;
    public static final m NOVEMBER;
    public static final m OCTOBER;
    public static final m SEPTEMBER;

    /* renamed from: a, reason: collision with root package name */
    public static final m[] f21233a;
    public static final /* synthetic */ m[] b;

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.m] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, j$.time.m] */
    static {
        ?? r0 = new Enum("JANUARY", 0);
        JANUARY = r0;
        ?? r1 = new Enum("FEBRUARY", 1);
        FEBRUARY = r1;
        ?? r3 = new Enum("MARCH", 2);
        MARCH = r3;
        ?? r5 = new Enum("APRIL", 3);
        APRIL = r5;
        ?? r7 = new Enum("MAY", 4);
        MAY = r7;
        ?? r9 = new Enum("JUNE", 5);
        JUNE = r9;
        ?? r11 = new Enum("JULY", 6);
        JULY = r11;
        ?? r13 = new Enum("AUGUST", 7);
        AUGUST = r13;
        ?? r15 = new Enum("SEPTEMBER", 8);
        SEPTEMBER = r15;
        ?? r2 = new Enum("OCTOBER", 9);
        OCTOBER = r2;
        ?? r4 = new Enum("NOVEMBER", 10);
        NOVEMBER = r4;
        ?? r6 = new Enum("DECEMBER", 11);
        DECEMBER = r6;
        b = new m[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6};
        f21233a = values();
    }

    public static m N(int i) {
        if (i < 1 || i > 12) {
            throw new RuntimeException("Invalid value for MonthOfYear: " + i);
        }
        return f21233a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.MONTH_OF_YEAR : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return rVar.range();
        }
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return rVar.i(this);
    }

    public final int L(boolean z) {
        int i = l.f21232a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int M() {
        int i = l.f21232a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    public final int K(boolean z) {
        switch (l.f21232a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.b) {
            return j$.time.chrono.t.f21173c;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.MONTHS;
        }
        return j$.time.temporal.s.c(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.G(mVar).equals(j$.time.chrono.t.f21173c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.a(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }
}
