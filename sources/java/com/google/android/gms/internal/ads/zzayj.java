package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzayj implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzayk f4474c;

    public zzayj(zzayk zzaykVar) {
        this.f4474c = zzaykVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zzayk zzaykVar = this.f4474c;
        if (zzaykVar.b == null) {
            synchronized (zzayk.f4475c) {
                if (zzaykVar.b != null) {
                    return;
                }
                boolean z2 = false;
                try {
                    z = ((Boolean) zzbgk.j3.c()).booleanValue();
                } catch (IllegalStateException unused) {
                    z = false;
                }
                if (z) {
                    try {
                        zzayk.d = zzfwb.a(this.f4474c.f4476a.f4510a, "ADSHIELD");
                    } catch (Throwable unused2) {
                    }
                }
                z2 = z;
                this.f4474c.b = Boolean.valueOf(z2);
                zzayk.f4475c.open();
            }
        }
    }
}
