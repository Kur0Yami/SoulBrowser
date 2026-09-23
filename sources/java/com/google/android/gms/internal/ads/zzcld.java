package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzcld {

    /* renamed from: a, reason: collision with root package name */
    public String f5237a;
    public zzief b;

    /* renamed from: c, reason: collision with root package name */
    public zziic f5238c;
    public final ScheduledExecutorService d;
    public final AtomicBoolean e = new AtomicBoolean(false);

    public zzcld(ScheduledExecutorService scheduledExecutorService) {
        this.d = scheduledExecutorService;
    }

    public final void a() {
        String str;
        try {
            if (WebViewFeature.a("GET_VARIATIONS_HEADER")) {
                str = WebViewCompat.c();
            } else {
                str = null;
            }
            if (str != null && !str.isEmpty()) {
                this.f5237a = str;
                byte[] decode = Base64.decode(str, 10);
                this.b = zzief.D(decode, zziab.a());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fa)).booleanValue()) {
                    this.f5238c = zziic.D(decode, zziab.a());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.da)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ca)).booleanValue()) {
                        this.d.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzclc
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcld.this.a();
                            }
                        }, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ea)).intValue(), TimeUnit.MINUTES);
                    }
                }
            }
        } catch (zzibg e) {
            e = e;
            com.google.android.gms.ads.internal.zzt.zzh().g("ChromeVariations", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            com.google.android.gms.ads.internal.zzt.zzh().g("ChromeVariations", e);
        }
    }
}
