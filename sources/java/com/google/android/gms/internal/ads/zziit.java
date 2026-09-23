package com.google.android.gms.internal.ads;

import android.util.Log;

/* loaded from: classes.dex */
public final class zziit extends zziiy {

    /* renamed from: a, reason: collision with root package name */
    public final String f8994a;

    public zziit(String str) {
        this.f8994a = str;
    }

    @Override // com.google.android.gms.internal.ads.zziiy
    public final void a(String str) {
        String str2 = this.f8994a;
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.e(androidx.work.impl.workers.a.e(1, str2), str));
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
