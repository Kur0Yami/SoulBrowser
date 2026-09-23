package j$.time.chrono;

import j$.time.ZoneId;

/* loaded from: classes2.dex */
public interface e extends j$.time.temporal.m, j$.time.temporal.o, Comparable {
    /* renamed from: C */
    int compareTo(e eVar);

    m getChronology();

    b toLocalDate();

    j$.time.k toLocalTime();

    j v(ZoneId zoneId);
}
