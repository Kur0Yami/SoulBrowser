package j$.time.temporal;

import j$.time.Duration;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public enum b implements t {
    NANOS("Nanos"),
    MICROS("Micros"),
    MILLIS("Millis"),
    SECONDS("Seconds"),
    MINUTES("Minutes"),
    HOURS("Hours"),
    HALF_DAYS("HalfDays"),
    DAYS("Days"),
    WEEKS("Weeks"),
    MONTHS("Months"),
    YEARS("Years"),
    DECADES("Decades"),
    CENTURIES("Centuries"),
    MILLENNIA("Millennia"),
    ERAS("Eras"),
    FOREVER("Forever");


    /* renamed from: a, reason: collision with root package name */
    public final String f21246a;

    static {
        Duration.h(1L);
        Duration.h(1000L);
        Duration.h(1000000L);
        Duration.g(1L, 0);
        Duration.g(60L, 0);
        Duration.g(3600L, 0);
        Duration.g(43200L, 0);
        Duration.g(86400L, 0);
        Duration.g(604800L, 0);
        Duration.g(2629746L, 0);
        Duration.g(31556952L, 0);
        Duration.g(315569520L, 0);
        Duration.g(3155695200L, 0);
        Duration.g(31556952000L, 0);
        Duration.g(31556952000000000L, 0);
        Duration.ofSeconds(LongCompanionObject.MAX_VALUE, 999999999L);
    }

    b(String str) {
        this.f21246a = str;
    }

    @Override // j$.time.temporal.t
    public final m d(m mVar, long j) {
        return mVar.b(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f21246a;
    }
}
