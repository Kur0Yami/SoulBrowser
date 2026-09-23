package j$.time.temporal;

import j$.time.Duration;

/* loaded from: classes2.dex */
public enum i implements t {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* renamed from: a, reason: collision with root package name */
    public final String f21249a;

    static {
        Duration.g(31556952L, 0);
        Duration.g(7889238L, 0);
    }

    i(String str) {
        this.f21249a = str;
    }

    @Override // j$.time.temporal.t
    public final m d(m mVar, long j) {
        int i = c.f21247a[ordinal()];
        if (i == 1) {
            return mVar.a(j$.com.android.tools.r8.a.I(mVar.g(r0), j), j.f21251c);
        }
        if (i == 2) {
            return mVar.b(j / 4, b.YEARS).b((j % 4) * 3, b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f21249a;
    }
}
