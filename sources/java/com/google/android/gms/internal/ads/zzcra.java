package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import android.view.MotionEvent;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcra {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5391a;
    public final com.google.android.gms.ads.internal.util.zzg b;

    /* renamed from: c, reason: collision with root package name */
    public final zzejc f5392c;
    public final zzduf d;
    public final zzgyw e;
    public final zzgyw f;
    public final ScheduledExecutorService g;
    public zzbxx h;
    public zzbxx i;

    public zzcra(Context context, com.google.android.gms.ads.internal.util.zzj zzjVar, zzejc zzejcVar, zzduf zzdufVar, zzgyw zzgywVar, zzgyw zzgywVar2, ScheduledExecutorService scheduledExecutorService) {
        this.f5391a = context;
        this.b = zzjVar;
        this.f5392c = zzejcVar;
        this.d = zzdufVar;
        this.e = zzgywVar;
        this.f = zzgywVar2;
        this.g = scheduledExecutorService;
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ab));
    }

    public final ListenableFuture a(final String str, Random random) {
        if (TextUtils.isEmpty(str)) {
            return zzgym.a(str);
        }
        return zzgym.f(c(str, this.d.f6152a, random), Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcqz
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                final Throwable th = (Throwable) obj;
                final zzcra zzcraVar = zzcra.this;
                zzcraVar.e.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqy
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcra zzcraVar2 = zzcra.this;
                        Context context = zzcraVar2.f5391a;
                        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hb)).booleanValue();
                        Throwable th2 = th;
                        if (booleanValue) {
                            zzbxx e = zzbxv.e(context);
                            zzcraVar2.i = e;
                            e.a("AttributionReporting.getUpdatedUrlAndRegisterSource", th2);
                        } else {
                            zzbxx c2 = zzbxv.c(context);
                            zzcraVar2.h = c2;
                            c2.a("AttributionReportingSampled.getUpdatedUrlAndRegisterSource", th2);
                        }
                    }
                });
                return zzgym.a(str);
            }
        }, this.e);
    }

    public final ListenableFuture c(final String str, final MotionEvent motionEvent, Random random) {
        ListenableFuture b;
        try {
            if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ab)) && !this.b.zzx()) {
                final Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bb), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
                if (motionEvent == null) {
                    buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cb), "11");
                    return zzgym.a(buildUpon.toString());
                }
                zzejc zzejcVar = this.f5392c;
                zzejcVar.getClass();
                try {
                    MeasurementManagerFutures a2 = MeasurementManagerFutures.a(zzejcVar.b);
                    zzejcVar.f6554a = a2;
                    if (a2 == null) {
                        b = zzgym.b(new IllegalStateException("MeasurementManagerFutures is null"));
                    } else {
                        b = a2.b();
                    }
                } catch (Exception e) {
                    b = zzgym.b(e);
                }
                return (zzgye) zzgym.f((zzgye) zzgym.h(zzgye.r(b), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcqu
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final ListenableFuture zza(Object obj) {
                        ListenableFuture b2;
                        InputEvent inputEvent = motionEvent;
                        int intValue = ((Integer) obj).intValue();
                        final Uri.Builder builder = buildUpon;
                        if (intValue == 1) {
                            Uri.Builder buildUpon2 = builder.build().buildUpon();
                            buildUpon2.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Db), "1");
                            buildUpon2.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cb), "12");
                            if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Eb))) {
                                buildUpon2.authority((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fb));
                            }
                            zzcra zzcraVar = zzcra.this;
                            zzejc zzejcVar2 = zzcraVar.f5392c;
                            Uri build = buildUpon2.build();
                            zzejcVar2.getClass();
                            try {
                                MeasurementManagerFutures measurementManagerFutures = zzejcVar2.f6554a;
                                Objects.requireNonNull(measurementManagerFutures);
                                b2 = measurementManagerFutures.c(build, inputEvent);
                            } catch (Exception e2) {
                                b2 = zzgym.b(e2);
                            }
                            return (zzgye) zzgym.h(zzgye.r(b2), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcqw
                                @Override // com.google.android.gms.internal.ads.zzgxu
                                public final /* synthetic */ ListenableFuture zza(Object obj2) {
                                    String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cb);
                                    Uri.Builder builder2 = builder;
                                    builder2.appendQueryParameter(str2, "12");
                                    return zzgym.a(builder2.toString());
                                }
                            }, zzcraVar.f);
                        }
                        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cb), "10");
                        return zzgym.a(builder.toString());
                    }
                }, this.f), Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcqv
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final /* synthetic */ ListenableFuture zza(Object obj) {
                        final Throwable th = (Throwable) obj;
                        final zzcra zzcraVar = zzcra.this;
                        zzcraVar.e.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqx
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcra zzcraVar2 = zzcra.this;
                                Context context = zzcraVar2.f5391a;
                                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hb)).booleanValue();
                                Throwable th2 = th;
                                if (booleanValue) {
                                    zzbxx e2 = zzbxv.e(context);
                                    zzcraVar2.i = e2;
                                    e2.a("AttributionReporting", th2);
                                } else {
                                    zzbxx c2 = zzbxv.c(context);
                                    zzcraVar2.h = c2;
                                    c2.a("AttributionReportingSampled", th2);
                                }
                            }
                        });
                        String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cb);
                        Uri.Builder builder = buildUpon;
                        builder.appendQueryParameter(str2, "9");
                        return zzgym.a(builder.toString());
                    }
                }, this.e);
            }
            return zzgym.a(str);
        } catch (Exception e2) {
            return zzgym.b(e2);
        }
    }
}
