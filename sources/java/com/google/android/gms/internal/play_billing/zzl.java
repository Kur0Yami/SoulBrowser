package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
final class zzl extends zzd {
    @Override // com.google.android.gms.internal.play_billing.zzd
    public final void a(zzm zzmVar, zzm zzmVar2) {
        zzmVar.b = zzmVar2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final void b(zzm zzmVar, Thread thread) {
        zzmVar.f11557a = thread;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean c(zzo zzoVar, zzh zzhVar, zzh zzhVar2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.f == zzhVar) {
                    zzoVar.f = zzhVar2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean d(zzo zzoVar, Object obj, Object obj2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.f11558c == obj) {
                    zzoVar.f11558c = obj2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean e(zzo zzoVar, zzm zzmVar, zzm zzmVar2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.g == zzmVar) {
                    zzoVar.g = zzmVar2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
