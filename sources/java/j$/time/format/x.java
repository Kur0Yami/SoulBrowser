package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.Instant;
import j$.time.ZoneId;

/* loaded from: classes2.dex */
public final class x implements j$.time.temporal.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j$.time.chrono.b f21221a;
    public final /* synthetic */ Instant b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j$.time.chrono.m f21222c;
    public final /* synthetic */ ZoneId d;

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.a(this, rVar);
    }

    public x(j$.time.chrono.b bVar, Instant instant, j$.time.chrono.m mVar, ZoneId zoneId) {
        this.f21221a = bVar;
        this.b = instant;
        this.f21222c = mVar;
        this.d = zoneId;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        j$.time.chrono.b bVar = this.f21221a;
        if (bVar != null && rVar.isDateBased()) {
            return bVar.c(rVar);
        }
        return this.b.c(rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        j$.time.chrono.b bVar = this.f21221a;
        if (bVar != null && rVar.isDateBased()) {
            return bVar.i(rVar);
        }
        return j$.time.temporal.s.d(this.b, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        j$.time.chrono.b bVar = this.f21221a;
        if (bVar != null && rVar.isDateBased()) {
            return bVar.y(rVar);
        }
        return this.b.y(rVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(j$.time.h hVar) {
        if (hVar == j$.time.temporal.s.b) {
            return this.f21222c;
        }
        if (hVar == j$.time.temporal.s.f21256a) {
            return this.d;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return this.b.d(hVar);
        }
        return hVar.d(this);
    }

    public final String toString() {
        String str;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        j$.time.chrono.m mVar = this.f21222c;
        if (mVar != null) {
            str = " with chronology " + mVar;
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        ZoneId zoneId = this.d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.b + str + str2;
    }
}
