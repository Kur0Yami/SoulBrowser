package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzeaj;
import com.google.android.gms.internal.ads.zzeak;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzax {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3116a = new Object();
    public String b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: c, reason: collision with root package name */
    public String f3117c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public boolean d = false;
    public boolean e = false;
    public String f = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public zzeak g;

    /* JADX WARN: Multi-variable type inference failed */
    public static final String b(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzt.zzc().zze(context, str2));
        ListenableFuture zzb = new zzbl(context).zzb(0, str, hashMap, null);
        try {
            return (String) zzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q5)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Interrupted while retrieving a response from: ".concat(valueOf), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Timeout while retrieving a response from: ".concat(valueOf2), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            int i3 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error retrieving a response from: ".concat(valueOf3), e3);
            return null;
        }
    }

    public final void a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Can not create dialog without Activity Context");
        } else {
            zzs.zza.post(new zzaw(this, context, str, z, z2));
        }
    }

    public final Uri c(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f3116a) {
            if (TextUtils.isEmpty(this.b)) {
                com.google.android.gms.ads.internal.zzt.zzc();
                try {
                    str5 = new String(IOUtils.readInputStreamFully(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    int i = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Error reading from internal storage.");
                    str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                this.b = str5;
                if (TextUtils.isEmpty(str5)) {
                    com.google.android.gms.ads.internal.zzt.zzc();
                    this.b = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzt.zzc();
                    String str6 = this.b;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e) {
                        int i2 = zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error writing to file in internal storage.", e);
                    }
                }
            }
            str4 = this.b;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final void zza(zzeak zzeakVar) {
        this.g = zzeakVar;
    }

    public final zzeak zzb() {
        return this.g;
    }

    public final void zzc(Context context) {
        zzeak zzeakVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue() && (zzeakVar = this.g) != null) {
            zzeakVar.f(new zzau(this, context), zzeaj.h);
        }
    }

    public final boolean zze(Context context, String str, String str2) {
        String b = b(context, c(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O5), str, str2).toString(), str2);
        if (TextUtils.isEmpty(b)) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(b.trim()).optString("debug_mode"));
            zzj(equals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
                zzj i2 = com.google.android.gms.ads.internal.zzt.zzh().i();
                if (true != equals) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                i2.zzM(str);
            }
            return equals;
        } catch (JSONException e) {
            int i3 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public final void zzf(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzt.zzc();
        zzs.zzab(context, c(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M5), str, str2));
    }

    public final boolean zzg(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && zzm()) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Sending troubleshooting signals to the server.");
            zzh(context, str, str2, str3);
            return true;
        }
        return false;
    }

    public final void zzh(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = c(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P5), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzt.zzc();
        zzs.zzQ(context, str, buildUpon.build().toString());
    }

    public final String zzi() {
        String str;
        synchronized (this.f3116a) {
            str = this.f3117c;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        if (r4 != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(boolean r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f3116a
            monitor-enter(r0)
            r3.e = r4     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Aa     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L45
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L45
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L45
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L47
            com.google.android.gms.internal.ads.zzcda r1 = com.google.android.gms.ads.internal.zzt.zzh()     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.ads.internal.util.zzj r1 = r1.i()     // Catch: java.lang.Throwable -> L45
            r1.zzK(r4)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzeak r1 = r3.g     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L47
            boolean r2 = r1.u     // Catch: java.lang.Throwable -> L45
            if (r2 != 0) goto L30
            if (r4 == 0) goto L3b
            r1.k()     // Catch: java.lang.Throwable -> L45
            goto L32
        L30:
            if (r4 == 0) goto L3b
        L32:
            boolean r4 = r1.s     // Catch: java.lang.Throwable -> L45
            if (r4 == 0) goto L37
            goto L3b
        L37:
            r1.l()     // Catch: java.lang.Throwable -> L45
            goto L47
        L3b:
            boolean r4 = r1.g()     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L47
            r1.m()     // Catch: java.lang.Throwable -> L45
            goto L47
        L45:
            r4 = move-exception
            goto L49
        L47:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L45
            return
        L49:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L45
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzax.zzj(boolean):void");
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.f3116a) {
            z = this.e;
        }
        return z;
    }

    public final void zzl(boolean z) {
        synchronized (this.f3116a) {
            this.d = z;
        }
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.f3116a) {
            z = this.d;
        }
        return z;
    }
}
