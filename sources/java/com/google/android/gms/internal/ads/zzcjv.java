package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzcjv implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcjx f5212c;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ boolean i;

    public /* synthetic */ zzcjv(zzcjx zzcjxVar, int i, int i2, boolean z, boolean z2) {
        this.f5212c = zzcjxVar;
        this.f = i;
        this.g = i2;
        this.h = z;
        this.i = z2;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        com.google.android.gms.ads.internal.client.zzeg zzegVar;
        com.google.android.gms.ads.internal.client.zzeg zzegVar2;
        com.google.android.gms.ads.internal.client.zzeg zzegVar3;
        zzcjx zzcjxVar = this.f5212c;
        int i2 = this.f;
        int i3 = this.g;
        boolean z6 = this.h;
        boolean z7 = this.i;
        synchronized (zzcjxVar.f) {
            try {
                boolean z8 = zzcjxVar.k;
                boolean z9 = false;
                if (!z8 && i3 == 1) {
                    i3 = 1;
                    i = 1;
                    z = true;
                } else {
                    i = i3;
                    z = false;
                }
                if (i2 != i3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 && i == 1) {
                    z3 = true;
                    i = 1;
                } else {
                    z3 = false;
                }
                if (z2 && i == 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z2 && i == 3) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z8 || z) {
                    z9 = true;
                }
                zzcjxVar.k = z9;
                if (z) {
                    try {
                        com.google.android.gms.ads.internal.client.zzeg zzegVar4 = zzcjxVar.j;
                        if (zzegVar4 != null) {
                            zzegVar4.zze();
                        }
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (z3 && (zzegVar3 = zzcjxVar.j) != null) {
                    zzegVar3.zzf();
                }
                if (z4 && (zzegVar2 = zzcjxVar.j) != null) {
                    zzegVar2.zzg();
                }
                if (z5) {
                    com.google.android.gms.ads.internal.client.zzeg zzegVar5 = zzcjxVar.j;
                    if (zzegVar5 != null) {
                        zzegVar5.zzh();
                    }
                    zzcjxVar.f5214c.zzz();
                }
                if (z6 != z7 && (zzegVar = zzcjxVar.j) != null) {
                    zzegVar.zzi(z7);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
