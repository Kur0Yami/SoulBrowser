package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
abstract class zzdn extends zzdc {
    public final String g;
    public int h;
    public int i;

    public zzdn(String str) {
        this.f = 2;
        this.h = 0;
        this.i = Integer.MAX_VALUE;
        this.g = str;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdc
    public final String a() {
        int b;
        int i = this.h;
        while (true) {
            int i2 = this.h;
            if (i2 != -1) {
                int c2 = c(i2);
                String str = this.g;
                if (c2 == -1) {
                    c2 = str.length();
                    this.h = -1;
                    b = -1;
                } else {
                    b = b(c2);
                    this.h = b;
                }
                if (b == i) {
                    int i3 = b + 1;
                    this.h = i3;
                    if (i3 > str.length()) {
                        this.h = -1;
                    }
                } else {
                    if (i < c2) {
                        str.charAt(i);
                    }
                    if (i < c2) {
                        str.charAt(c2 - 1);
                    }
                    int i4 = this.i;
                    if (i4 == 1) {
                        c2 = str.length();
                        this.h = -1;
                        if (c2 > i) {
                            str.charAt(c2 - 1);
                        }
                    } else {
                        this.i = i4 - 1;
                    }
                    return str.subSequence(i, c2).toString();
                }
            } else {
                this.f = 3;
                return null;
            }
        }
    }

    public abstract int b(int i);

    public abstract int c(int i);
}
