package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
final class zzcw implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final zzdc f11478c;
    public final zzcv f;

    public zzcw(zzdc zzdcVar, zzcv zzcvVar) {
        this.f11478c = zzdcVar;
        this.f = zzcvVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Throwable a2;
        zzdc zzdcVar = this.f11478c;
        boolean z = zzdcVar instanceof zzdi;
        zzcv zzcvVar = this.f;
        if (z && (a2 = ((zzdi) zzdcVar).a()) != null) {
            zzcvVar.b(a2);
            return;
        }
        try {
            boolean isDone = zzdcVar.isDone();
            boolean z2 = false;
            Future future = zzdcVar;
            if (isDone) {
                while (true) {
                    try {
                        obj = future.get();
                        break;
                    } catch (InterruptedException unused) {
                        z2 = true;
                        future = future;
                    } catch (Throwable th) {
                        if (z2) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                zzcvVar.a(obj);
                return;
            }
            throw new IllegalStateException(zzbm.a("Future was expected to be done: %s", zzdcVar));
        } catch (ExecutionException e) {
            zzcvVar.b(e.getCause());
        } catch (Throwable th2) {
            zzcvVar.b(th2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.play_billing.zzbe, java.lang.Object] */
    public final String toString() {
        zzbf zzbfVar = new zzbf("zzcw");
        ?? obj = new Object();
        zzbfVar.f11452c.b = obj;
        zzbfVar.f11452c = obj;
        obj.f11450a = this.f;
        return zzbfVar.toString();
    }
}
