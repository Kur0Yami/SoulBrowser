package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public final class zzfjd {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f7408a;

    public zzfjd() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H7));
        } catch (PatternSyntaxException unused) {
            pattern = null;
        }
        this.f7408a = pattern;
    }
}
