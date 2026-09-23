package com.google.android.gms.cast.internal;

import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;

@KeepForSdk
/* loaded from: classes.dex */
public class Logger {

    /* renamed from: a, reason: collision with root package name */
    public final String f3604a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3605c;

    public Logger(String str, String str2) {
        boolean z;
        Preconditions.checkNotEmpty(str, "The log tag cannot be null or empty.");
        this.f3604a = str;
        this.f3605c = str2;
        if (str.length() <= 23) {
            z = true;
        } else {
            z = false;
        }
        this.b = z;
    }

    public final void a(Exception exc, String str, Object... objArr) {
        if (!Build.TYPE.equals("user") && this.b) {
            String str2 = this.f3604a;
            if (Log.isLoggable(str2, 3)) {
                Log.d(str2, d(str, objArr), exc);
            }
        }
    }

    public final void b(String str, Object... objArr) {
        if (!Build.TYPE.equals("user") && this.b) {
            String str2 = this.f3604a;
            if (Log.isLoggable(str2, 3)) {
                Log.d(str2, d(str, objArr));
            }
        }
    }

    public final void c(Object... objArr) {
        Log.e(this.f3604a, d("Bundle is null", objArr));
    }

    public final String d(String str, Object... objArr) {
        String l;
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        String str2 = this.f3605c;
        if (TextUtils.isEmpty(str2)) {
            l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            l = a.l("[", str2, "] ");
        }
        if (!TextUtils.isEmpty(l)) {
            return l.concat(String.valueOf(str));
        }
        return str;
    }
}
