package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.Spanned;

/* loaded from: classes.dex */
final class zzda {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5645a;
    public static final String b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f5646c;
    public static final String d;
    public static final String e;

    static {
        String str = zzfj.f7405a;
        f5645a = Integer.toString(0, 36);
        b = Integer.toString(1, 36);
        f5646c = Integer.toString(2, 36);
        d = Integer.toString(3, 36);
        e = Integer.toString(4, 36);
    }

    public static Bundle a(Spanned spanned, Object obj, int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f5645a, spanned.getSpanStart(obj));
        bundle2.putInt(b, spanned.getSpanEnd(obj));
        bundle2.putInt(f5646c, spanned.getSpanFlags(obj));
        bundle2.putInt(d, i);
        if (bundle != null) {
            bundle2.putBundle(e, bundle);
        }
        return bundle2;
    }
}
