package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbrw {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4864a = new Object();
    public final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public zzbsf f4865c;
    public zzbsf d;

    public static final boolean d(Context context) {
        if (((Boolean) zzbiq.f4725c.c()).booleanValue()) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return com.google.android.gms.ads.internal.util.zzs.zzm(context).zza().toLowerCase(Locale.ROOT).equals("ru");
    }

    public final zzbsf a(Context context, VersionInfoParcel versionInfoParcel, zzfnr zzfnrVar) {
        zzbsf zzbsfVar;
        String str;
        synchronized (this.b) {
            try {
                if (this.d == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    if (d(context)) {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f4659c);
                    } else {
                        str = (String) zzbiu.f4730a.c();
                    }
                    this.d = new zzbsf(applicationContext, versionInfoParcel, str, zzfnrVar);
                }
                zzbsfVar = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbsfVar;
    }

    public final zzbsf b(Context context, VersionInfoParcel versionInfoParcel, zzfnr zzfnrVar) {
        zzbsf zzbsfVar;
        String str;
        synchronized (this.f4864a) {
            try {
                if (this.f4865c == null) {
                    if (d(context)) {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f4659c);
                    } else if (((Boolean) zzbiq.g.c()).booleanValue()) {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f4658a);
                    } else {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b);
                    }
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    this.f4865c = new zzbsf(context, versionInfoParcel, str, zzfnrVar);
                }
                zzbsfVar = this.f4865c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbsfVar;
    }

    public final void c() {
        synchronized (this.f4864a) {
            try {
                zzbsf zzbsfVar = this.f4865c;
                if (zzbsfVar != null) {
                    zzbrr zzbrrVar = zzbsfVar.f4869a;
                    zzbrq zzbrqVar = zzbrrVar.h;
                    if (zzbrqVar != null) {
                        zzbrqVar.f();
                        zzbrrVar.h = null;
                    }
                    this.f4865c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
