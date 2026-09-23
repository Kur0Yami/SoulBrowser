package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzsc {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9238a;
    public zzpp b;

    /* renamed from: c, reason: collision with root package name */
    public zzsi f9239c;

    public zzsc(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.f9238a = context2;
        if (context == null) {
            this.b = zzpp.f9167c;
        }
    }
}
