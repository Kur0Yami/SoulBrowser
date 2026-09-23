package com.google.android.gms.cast.internal;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.cast.zzfk;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzw extends zzai {

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f3634c;
    public final zzfk f;

    public zzw(zzx zzxVar) {
        this.f3634c = new AtomicReference(zzxVar);
        this.f = new zzfk(zzxVar.getLooper());
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void G0(String str, String str2) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzx.B.b("Receive (type=text, ns=%s) %s", str, str2);
        this.f.post(new zzv(this, zzxVar, str, str2));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void T2(zzac zzacVar) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzx.B.b("onDeviceStatusChanged", new Object[0]);
        this.f.post(new zzt(this, zzxVar, zzacVar));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void b1(zza zzaVar) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzx.B.b("onApplicationStatusChanged", new Object[0]);
        this.f.post(new zzu(this, zzxVar, zzaVar));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void d(int i) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar != null) {
            zzxVar.v = null;
            zzxVar.w = null;
            zzxVar.k(i);
            if (zzxVar.g != null) {
                this.f.post(new zzs(this, zzxVar, i));
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void e(int i) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.k(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void e2() {
        zzx.B.b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void f(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void j0(String str, byte[] bArr) {
        if (((zzx) this.f3634c.get()) == null) {
            return;
        }
        Logger logger = zzx.B;
        zzx.B.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void o3(int i, long j) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.j(i, j);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void p(int i) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.k(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void z4(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.f3635c = applicationMetadata;
        zzxVar.v = applicationMetadata.f3427c;
        zzxVar.w = str2;
        zzxVar.l = str;
        synchronized (zzx.C) {
            try {
                BaseImplementation.ResultHolder resultHolder = zzxVar.z;
                if (resultHolder != null) {
                    resultHolder.setResult(new zzr(new Status(0), applicationMetadata, str, str2, z));
                    zzxVar.z = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzb(int i) {
        zzx zzxVar = null;
        zzx zzxVar2 = (zzx) this.f3634c.getAndSet(null);
        if (zzxVar2 != null) {
            zzxVar2.p = false;
            zzxVar2.s = -1;
            zzxVar2.t = -1;
            zzxVar2.f3635c = null;
            zzxVar2.l = null;
            zzxVar2.q = 0.0d;
            zzxVar2.e();
            zzxVar2.m = false;
            zzxVar2.r = null;
            zzxVar = zzxVar2;
        }
        if (zzxVar != null) {
            zzx.B.b("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
            if (i != 0) {
                zzxVar.triggerConnectionSuspended(2);
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzf(int i) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.f(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzp(long j) {
        zzx zzxVar = (zzx) this.f3634c.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.j(0, j);
    }
}
