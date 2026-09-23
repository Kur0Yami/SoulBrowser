package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzcm;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
final class zzde implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public zzdh f11482c;

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzcm.zzc zzcVar;
        zzdh zzdhVar = this.f11482c;
        if (zzdhVar != null && (zzdcVar = zzdhVar.l) != null) {
            this.f11482c = null;
            if (zzdcVar.isDone()) {
                Object obj = zzdhVar.f11470c;
                if (obj == null) {
                    if (zzdcVar.isDone()) {
                        if (zzcn.k.f(zzdhVar, null, zzcm.g(zzdcVar))) {
                            zzcm.i(zzdhVar);
                            return;
                        }
                        return;
                    }
                    zzcm.zzb zzbVar = new zzcm.zzb(zzdhVar, zzdcVar);
                    if (zzcn.k.f(zzdhVar, null, zzbVar)) {
                        try {
                            zzdcVar.b0(zzbVar, zzcs.f11477c);
                            return;
                        } catch (Throwable th) {
                            try {
                                zzcVar = new zzcm.zzc(th);
                            } catch (Error | Exception unused) {
                                zzcVar = zzcm.zzc.b;
                            }
                            zzcn.k.f(zzdhVar, zzbVar, zzcVar);
                            return;
                        }
                    }
                    obj = zzdhVar.f11470c;
                }
                if (obj instanceof zzcm.zza) {
                    zzdcVar.cancel(((zzcm.zza) obj).f11465a);
                    return;
                }
                return;
            }
            try {
                ScheduledFuture scheduledFuture = zzdhVar.m;
                zzdhVar.m = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            str = "Timed out (timeout delayed by " + abs + " ms after scheduled time)";
                        }
                    } catch (Throwable th2) {
                        if (zzcn.k.f(zzdhVar, null, new zzcm.zzc(new TimeoutException(str)))) {
                            zzcm.i(zzdhVar);
                        }
                        throw th2;
                    }
                }
                if (zzcn.k.f(zzdhVar, null, new zzcm.zzc(new TimeoutException(str + ": " + zzdcVar.toString())))) {
                    zzcm.i(zzdhVar);
                }
            } finally {
                zzdcVar.cancel(true);
            }
        }
    }
}
