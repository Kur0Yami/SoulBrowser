package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzar {

    /* renamed from: a, reason: collision with root package name */
    public final int f4359a;

    public zzar(int i) {
        this.f4359a = i;
    }

    public final int a() {
        int i = this.f4359a;
        if (i == 2) {
            return 10;
        }
        if (i == 5) {
            return 11;
        }
        if (i == 29) {
            return 12;
        }
        if (i == 42) {
            return 16;
        }
        if (i != 22) {
            return i != 23 ? 0 : 15;
        }
        return 1073741824;
    }
}
