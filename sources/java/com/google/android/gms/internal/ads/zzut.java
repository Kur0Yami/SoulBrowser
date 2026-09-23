package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes.dex */
final class zzut {

    /* renamed from: a, reason: collision with root package name */
    public final String f9303a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9304c;

    public zzut(String str, boolean z, boolean z2) {
        this.f9303a = str;
        this.b = z;
        this.f9304c = z2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && obj.getClass() == zzut.class) {
                zzut zzutVar = (zzut) obj;
                if (TextUtils.equals(this.f9303a, zzutVar.f9303a) && this.b == zzutVar.b && this.f9304c == zzutVar.f9304c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f9303a.hashCode() + 31;
        int i2 = 1231;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        int i3 = ((hashCode * 31) + i) * 31;
        if (true != this.f9304c) {
            i2 = 1237;
        }
        return i3 + i2;
    }
}
