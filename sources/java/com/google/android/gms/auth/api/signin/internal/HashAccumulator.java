package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class HashAccumulator {

    /* renamed from: a, reason: collision with root package name */
    public int f3384a = 1;

    public final void a(Object obj) {
        int hashCode;
        int i = this.f3384a * 31;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        this.f3384a = i + hashCode;
    }
}
