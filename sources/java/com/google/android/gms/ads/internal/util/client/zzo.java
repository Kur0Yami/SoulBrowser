package com.google.android.gms.ads.internal.util.client;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzgqp;

/* loaded from: classes.dex */
public class zzo {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgqp f3087a = zzgqp.b();

    public static String a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(str.length() + 2 + String.valueOf(lineNumber).length());
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            return sb.toString();
        }
        return str;
    }

    public static void zzd(String str) {
        if (zzm(3)) {
            if (str.length() <= 4000) {
                Log.d("Ads", str);
                return;
            }
            boolean z = true;
            for (String str2 : f3087a.c(str)) {
                if (z) {
                    Log.d("Ads", str2);
                } else {
                    Log.d("Ads-cont", str2);
                }
                z = false;
            }
        }
    }

    public static void zze(String str, Throwable th) {
        if (zzm(3)) {
            Log.d("Ads", str, th);
        }
    }

    public static void zzf(String str) {
        if (zzm(6)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f3087a.c(str)) {
                    if (z) {
                        Log.e("Ads", str2);
                    } else {
                        Log.e("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.e("Ads", str);
        }
    }

    public static void zzg(String str, Throwable th) {
        if (zzm(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void zzh(String str) {
        if (zzm(4)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f3087a.c(str)) {
                    if (z) {
                        Log.i("Ads", str2);
                    } else {
                        Log.i("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.i("Ads", str);
        }
    }

    public static void zzi(String str) {
        if (zzm(5)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f3087a.c(str)) {
                    if (z) {
                        Log.w("Ads", str2);
                    } else {
                        Log.w("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.w("Ads", str);
        }
    }

    public static void zzj(String str, Throwable th) {
        if (zzm(5)) {
            Log.w("Ads", str, th);
        }
    }

    public static void zzl(String str, @Nullable Throwable th) {
        if (zzm(5)) {
            if (th != null) {
                zzj(a(str), th);
            } else {
                zzi(a(str));
            }
        }
    }

    public static boolean zzm(int i) {
        if (i < 5 && !Log.isLoggable("Ads", i)) {
            return false;
        }
        return true;
    }
}
