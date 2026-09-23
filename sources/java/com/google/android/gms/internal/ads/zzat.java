package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;

/* loaded from: classes.dex */
public class zzat extends IOException {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4395c;
    public final int f;

    public zzat(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.f4395c = z;
        this.f = i;
    }

    public static zzat a(String str, RuntimeException runtimeException) {
        return new zzat(str, runtimeException, true, 1);
    }

    public static zzat b(String str) {
        return new zzat(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String message = super.getMessage();
        if (message != null) {
            str = message.concat(" ");
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int length = str.length();
        boolean z = this.f4395c;
        int length2 = String.valueOf(z).length() + length + 20;
        int i = this.f;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + length2 + 11 + 1);
        sb.append(str);
        sb.append("{contentIsMalformed=");
        sb.append(z);
        sb.append(", dataType=");
        return android.support.v4.media.a.g(i, "}", sb);
    }
}
