package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.util.IOUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzchm extends zzgt {
    public final Context e;
    public final zzhb f;
    public final zzchk g;
    public final String h;
    public final int i;
    public final boolean j;
    public InputStream k;
    public boolean l;
    public Uri m;
    public volatile zzbev n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public long s;
    public ListenableFuture t;
    public final AtomicLong u;

    public zzchm(Context context, zzhb zzhbVar, String str, int i, zzhz zzhzVar, zzchk zzchkVar) {
        super(false);
        this.e = context;
        this.f = zzhbVar;
        this.g = zzchkVar;
        this.h = str;
        this.i = i;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = 0L;
        this.u = new AtomicLong(-1L);
        this.t = null;
        this.j = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue();
        c(zzhzVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0213  */
    @Override // com.google.android.gms.internal.ads.zzhb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.zzhf r15) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchm.a(com.google.android.gms.internal.ads.zzhf):long");
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        int b;
        if (this.l) {
            InputStream inputStream = this.k;
            if (inputStream != null) {
                b = inputStream.read(bArr, i, i2);
            } else {
                b = this.f.b(bArr, i, i2);
            }
            if (this.j && this.k == null) {
                return b;
            }
            f(b);
            return b;
        }
        throw new IOException("Attempt to read closed GcacheDataSource.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long n() {
        if (this.n != null) {
            AtomicLong atomicLong = this.u;
            if (atomicLong.get() != -1) {
                return atomicLong.get();
            }
            synchronized (this) {
                try {
                    if (this.t == null) {
                        this.t = ((zzgxi) zzcdo.f5068a).v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzchl
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                long j;
                                zzchm zzchmVar = zzchm.this;
                                zzchmVar.getClass();
                                zzber zzj = com.google.android.gms.ads.internal.zzt.zzj();
                                zzbev zzbevVar = zzchmVar.n;
                                synchronized (zzj.f4598c) {
                                    try {
                                        j = -2;
                                        if (zzj.f != null) {
                                            if (zzj.d.d()) {
                                                try {
                                                    zzbex zzbexVar = zzj.f;
                                                    Parcel I1 = zzbexVar.I1();
                                                    zzbcd.c(I1, zzbevVar);
                                                    Parcel f2 = zzbexVar.f2(3, I1);
                                                    long readLong = f2.readLong();
                                                    f2.recycle();
                                                    j = readLong;
                                                } catch (RemoteException e) {
                                                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                                                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to call into cache service.", e);
                                                }
                                            }
                                        }
                                    } finally {
                                    }
                                }
                                return Long.valueOf(j);
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.t.isDone()) {
                try {
                    this.u.compareAndSet(-1L, ((Long) this.t.get()).longValue());
                    return this.u.get();
                } catch (InterruptedException | ExecutionException unused) {
                }
            }
        }
        return -1L;
    }

    public final boolean o() {
        if (!this.j) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k5)).booleanValue() && !this.q) {
            return true;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l5)).booleanValue() || this.r) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        if (this.l) {
            boolean z = false;
            this.l = false;
            this.m = null;
            if (!this.j || this.k != null) {
                z = true;
            }
            InputStream inputStream = this.k;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.k = null;
            } else {
                this.f.zzd();
            }
            if (z) {
                g();
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed GcacheDataSource.");
    }
}
