package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzclf implements zzayl {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5240c;
    public final zzfzz f;

    public zzclf(Context context, VersionInfoParcel versionInfoParcel) {
        zzfzz zzfzzVar;
        this.f5240c = context;
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v3)).intValue();
        int i = 2;
        if (intValue != 1) {
            if (intValue == 2 || intValue != 3) {
                i = 3;
            } else {
                i = 4;
            }
        }
        zzgau H = zzgav.H();
        float floatValue = ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C3)).floatValue();
        H.k();
        ((zzgav) H.f).J(floatValue);
        zzgav zzgavVar = (zzgav) H.m();
        zzgaw K = zzgax.K();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D3)).booleanValue();
        K.k();
        ((zzgax) K.f).M(booleanValue);
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F3)).longValue();
        K.k();
        ((zzgax) K.f).N(longValue);
        zzgax zzgaxVar = (zzgax) K.m();
        zzgac b0 = zzgad.b0();
        b0.k();
        ((zzgad) b0.f).H(i);
        String str = versionInfoParcel.afmaVersion;
        b0.k();
        ((zzgad) b0.f).d0(str);
        boolean booleanValue2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z2)).booleanValue();
        b0.k();
        ((zzgad) b0.f).c0(booleanValue2);
        boolean z = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s3)).intValue() == -1;
        b0.k();
        ((zzgad) b0.f).F(z);
        long intValue2 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u3)).intValue();
        b0.k();
        ((zzgad) b0.f).E(intValue2);
        long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E3)).longValue();
        b0.k();
        ((zzgad) b0.f).g0(longValue2);
        long intValue3 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t3)).intValue();
        b0.k();
        ((zzgad) b0.f).f0(intValue3);
        b0.k();
        ((zzgad) b0.f).e0(zzgavVar);
        b0.k();
        ((zzgad) b0.f).D(zzgaxVar);
        zzgad zzgadVar = (zzgad) b0.m();
        zzgyw zzgywVar = zzcdo.f5068a;
        synchronized (zzfzz.b) {
            try {
                if (zzfzz.f7763c == null) {
                    zzfzz.f7763c = new zzfzz(context, zzgadVar, zzgywVar);
                }
                zzfzzVar = zzfzz.f7763c;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f = zzfzzVar;
        zzfzzVar.a();
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzd(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return;
        }
        this.f.d(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zze(int i, int i2, int i3) {
        com.google.android.gms.ads.internal.client.zzbb.zza();
        Context context = this.f5240c;
        float zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        long j = i3;
        MotionEvent obtain = MotionEvent.obtain(0L, j, 0, zzC, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2), 0);
        zzfzz zzfzzVar = this.f;
        zzfzzVar.d(obtain);
        obtain.recycle();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        float zzC2 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        MotionEvent obtain2 = MotionEvent.obtain(0L, j, 2, zzC2, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2), 0);
        zzfzzVar.d(obtain2);
        obtain2.recycle();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        float zzC3 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        MotionEvent obtain3 = MotionEvent.obtain(0L, j, 1, zzC3, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2), 0);
        zzfzzVar.d(obtain3);
        obtain3.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzf(Context context, String str, View view, Activity activity) {
        return this.f.c(context, str, view);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzg(Context context, String str, View view) {
        return this.f.c(context, str, view);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        zzfzz zzfzzVar = this.f;
        List asList = Arrays.asList(stackTraceElementArr);
        zzgmo zzgmoVar = zzfzzVar.f7764a.f7760c.b;
        synchronized (zzgmoVar) {
            ArrayList arrayList = zzgmoVar.f8132a;
            arrayList.clear();
            arrayList.addAll(asList);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzj(final Context context, final View view, final Activity activity) {
        String num;
        ListenableFuture listenableFuture;
        final zzfzx zzfzxVar = this.f.f7764a;
        zzgbj zzgbjVar = zzfzxVar.e;
        zzgnc zzgncVar = zzfzxVar.d;
        zzgna a2 = zzgncVar.a(4);
        try {
            try {
                try {
                    a2.a();
                    zzgcd zzgcdVar = zzfzxVar.f7759a;
                    synchronized (zzgcdVar) {
                        listenableFuture = zzgcdVar.e;
                        if (listenableFuture == null) {
                            throw null;
                        }
                    }
                    num = (String) ((zzgxf) zzgym.h(listenableFuture, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfzu
                        @Override // com.google.android.gms.internal.ads.zzgxu
                        public final ListenableFuture zza(Object obj) {
                            return ((zzgct) zzfzx.this.b.f.get()).a(context, view, activity);
                        }
                    }, zzgyb.f8301c)).get(zzfzxVar.f, TimeUnit.MILLISECONDS);
                } catch (ExecutionException e) {
                    e = e;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    a2.b(e);
                    num = Integer.toString(3);
                } catch (Throwable th) {
                    a2.b(th);
                    throw th;
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                a2.b(e2);
                num = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } catch (TimeoutException unused) {
                zzgncVar.b(57);
                num = Integer.toString(17);
            }
            a2.c();
            zzgbjVar.zzb();
            return num;
        } catch (Throwable th2) {
            a2.c();
            zzgbjVar.zzb();
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzk(Context context) {
        return this.f.b(context);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzl(Context context) {
        return this.f.b(context);
    }
}
