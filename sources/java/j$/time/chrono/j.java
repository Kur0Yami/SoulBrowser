package j$.time.chrono;

import j$.time.ZoneId;
import j$.time.ZoneOffset;

/* loaded from: classes2.dex */
public interface j extends j$.time.temporal.m, Comparable {
    m getChronology();

    ZoneOffset getOffset();

    ZoneId getZone();

    j s(ZoneId zoneId);

    long toEpochSecond();

    b toLocalDate();

    e toLocalDateTime();

    j$.time.k toLocalTime();
}
