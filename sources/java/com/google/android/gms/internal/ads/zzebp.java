package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.PatternSyntaxException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzebp {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6342a;
    public final VersionInfoParcel b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6343c;
    public final AtomicReference d = new AtomicReference(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    public zzebp(Context context, VersionInfoParcel versionInfoParcel, Executor executor) {
        this.f6342a = context;
        this.b = versionInfoParcel;
        this.f6343c = executor;
    }

    public static final String c(String str) {
        return com.google.android.gms.ads.internal.util.zzs.zzl(new String(Base64.decode(str, 0)), new String(Base64.decode((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Jf), 10), StandardCharsets.UTF_8));
    }

    public final String a() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ff)).booleanValue()) {
            if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hf)).isEmpty()) {
                if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.If)).isEmpty()) {
                    if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Jf)).isEmpty()) {
                        String str = (String) this.d.get();
                        if (str.isEmpty()) {
                            this.f6343c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebo
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzebp zzebpVar = zzebp.this;
                                    AtomicReference atomicReference = zzebpVar.d;
                                    synchronized (atomicReference) {
                                        try {
                                            if (!((String) atomicReference.get()).isEmpty()) {
                                                return;
                                            }
                                            atomicReference.set(zzebpVar.b());
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            });
                            return null;
                        }
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public final String b() {
        String str;
        VersionInfoParcel versionInfoParcel = this.b;
        String str2 = null;
        if (versionInfoParcel.isClientJar) {
            str = zzcjc.class.getName();
        } else {
            try {
                str = (String) new JSONObject(c((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hf))).get(Integer.toString(versionInfoParcel.clientJarVersion));
            } catch (ClassCastException | IllegalArgumentException | NullPointerException | JSONException e) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Gf)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("SdkIE", e);
                }
                str = null;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                str2 = c((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.If));
            } catch (IllegalArgumentException e2) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Gf)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("SdkIE", e2);
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return "3";
            }
            try {
                for (Method method : this.f6342a.getClassLoader().loadClass(str).getDeclaredMethods()) {
                    if (method.getName().matches(str2)) {
                        return "1";
                    }
                }
                return "0";
            } catch (ClassNotFoundException unused) {
                return "4";
            } catch (NoClassDefFoundError unused2) {
                return "6";
            } catch (SecurityException unused3) {
                return "7";
            } catch (PatternSyntaxException unused4) {
                return "5";
            }
        }
        return "2";
    }
}
