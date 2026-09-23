package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzt implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzx f3631c;
    public final /* synthetic */ zzac f;

    public zzt(zzw zzwVar, zzx zzxVar, zzac zzacVar) {
        this.f3631c = zzxVar;
        this.f = zzacVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        boolean z3;
        zzx zzxVar = this.f3631c;
        Cast.Listener listener = zzxVar.g;
        zzac zzacVar = this.f;
        ApplicationMetadata applicationMetadata = zzacVar.h;
        com.google.android.gms.cast.zzao zzaoVar = zzacVar.j;
        if (!CastUtils.c(applicationMetadata, zzxVar.f3635c)) {
            zzxVar.f3635c = applicationMetadata;
            listener.c(applicationMetadata);
        }
        double d = zzacVar.f3610c;
        if (!Double.isNaN(d) && Math.abs(d - zzxVar.q) > 1.0E-7d) {
            zzxVar.q = d;
            z = true;
        } else {
            z = false;
        }
        boolean z4 = zzacVar.f;
        if (z4 != zzxVar.m) {
            zzxVar.m = z4;
            z = true;
        }
        Double.isNaN(zzacVar.k);
        Logger logger = zzx.B;
        logger.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzxVar.o));
        if (listener != null && (z || zzxVar.o)) {
            listener.g();
        }
        int i = zzacVar.g;
        if (i != zzxVar.s) {
            zzxVar.s = i;
            z2 = true;
        } else {
            z2 = false;
        }
        logger.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(zzxVar.o));
        if (listener != null && (z2 || zzxVar.o)) {
            listener.a(zzxVar.s);
        }
        int i2 = zzacVar.i;
        if (i2 != zzxVar.t) {
            zzxVar.t = i2;
            z3 = true;
        } else {
            z3 = false;
        }
        logger.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(zzxVar.o));
        if (listener != null && (z3 || zzxVar.o)) {
            listener.f(zzxVar.t);
        }
        if (!CastUtils.c(zzxVar.r, zzaoVar)) {
            zzxVar.r = zzaoVar;
        }
        zzxVar.o = false;
    }
}
