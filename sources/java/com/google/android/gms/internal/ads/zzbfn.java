package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzbfn {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4617a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbfo f4618c;

    public /* synthetic */ zzbfn(zzbfo zzbfoVar, byte[] bArr) {
        Objects.requireNonNull(zzbfoVar);
        this.f4618c = zzbfoVar;
        this.f4617a = bArr;
    }

    public final synchronized void a() {
        this.f4618c.f4620c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbfm
            @Override // java.lang.Runnable
            public final void run() {
                zzbfn zzbfnVar = zzbfn.this;
                synchronized (zzbfnVar) {
                    try {
                        zzbfo zzbfoVar = zzbfnVar.f4618c;
                        if (zzbfoVar.b) {
                            zzbfoVar.f4619a.l3(zzbfnVar.f4617a);
                            zzbfoVar.f4619a.d(0);
                            zzbfoVar.f4619a.n(zzbfnVar.b);
                            zzbfoVar.f4619a.Y0();
                            zzbfoVar.f4619a.zzf();
                        }
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zze("Clearcut log failed", e);
                    }
                }
            }
        });
    }
}
