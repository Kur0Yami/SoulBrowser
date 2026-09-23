package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhxh {
    public static final zzhxh d = new zzhxh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false);

    /* renamed from: a, reason: collision with root package name */
    public final String f8866a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8867c;

    static {
        new zzhxh("\n", "  ", true);
    }

    public zzhxh(String str, String str2, boolean z) {
        if (str.matches("[\r\n]*")) {
            if (str2.matches("[ \t]*")) {
                this.f8866a = str;
                this.b = str2;
                this.f8867c = z;
                return;
            }
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
    }
}
