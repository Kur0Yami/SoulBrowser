package j$.time.format;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.n f21223a;
    public final DateTimeFormatter b;

    /* renamed from: c, reason: collision with root package name */
    public int f21224c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [j$.time.format.x] */
    public y(Instant instant, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.m mVar = dateTimeFormatter.e;
        if (mVar != null) {
            j$.time.chrono.m mVar2 = (j$.time.chrono.m) instant.d(j$.time.temporal.s.b);
            ZoneId zoneId = (ZoneId) instant.d(j$.time.temporal.s.f21256a);
            j$.time.chrono.b bVar = null;
            mVar = Objects.equals(mVar, mVar2) ? null : mVar;
            Objects.equals(null, zoneId);
            if (mVar != null) {
                j$.time.chrono.m mVar3 = mVar != null ? mVar : mVar2;
                if (mVar != null) {
                    if (instant.c(j$.time.temporal.a.EPOCH_DAY)) {
                        bVar = mVar3.w(instant);
                    } else if (mVar != j$.time.chrono.t.f21173c || mVar2 != null) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.isDateBased() && instant.c(aVar)) {
                                throw new RuntimeException("Unable to apply override chronology '" + mVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + instant);
                            }
                        }
                    }
                }
                instant = new x(bVar, instant, mVar3, zoneId);
            }
        }
        this.f21223a = instant;
        this.b = dateTimeFormatter;
    }

    public final Object b(j$.time.h hVar) {
        j$.time.temporal.n nVar = this.f21223a;
        Object d = nVar.d(hVar);
        if (d != null || this.f21224c != 0) {
            return d;
        }
        throw new RuntimeException("Unable to extract " + hVar + " from temporal " + nVar);
    }

    public final Long a(j$.time.temporal.r rVar) {
        int i = this.f21224c;
        j$.time.temporal.n nVar = this.f21223a;
        if (i <= 0 || nVar.c(rVar)) {
            return Long.valueOf(nVar.y(rVar));
        }
        return null;
    }

    public final String toString() {
        return this.f21223a.toString();
    }
}
