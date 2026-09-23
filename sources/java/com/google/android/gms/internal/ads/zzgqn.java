package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
abstract class zzgqn extends zzgpi {
    public final CharSequence g;
    public int h;
    public int i;

    public zzgqn(CharSequence charSequence) {
        this.f = 2;
        this.h = 0;
        this.i = Integer.MAX_VALUE;
        this.g = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzgpi
    public final String a() {
        int c2;
        int i = this.h;
        while (true) {
            int i2 = this.h;
            if (i2 != -1) {
                int b = b(i2);
                CharSequence charSequence = this.g;
                if (b == -1) {
                    b = charSequence.length();
                    this.h = -1;
                    c2 = -1;
                } else {
                    c2 = c(b);
                    this.h = c2;
                }
                if (c2 == i) {
                    int i3 = c2 + 1;
                    this.h = i3;
                    if (i3 > charSequence.length()) {
                        this.h = -1;
                    }
                } else {
                    if (i < b) {
                        charSequence.charAt(i);
                    }
                    if (i < b) {
                        charSequence.charAt(b - 1);
                    }
                    int i4 = this.i;
                    if (i4 == 1) {
                        b = charSequence.length();
                        this.h = -1;
                        if (b > i) {
                            charSequence.charAt(b - 1);
                        }
                    } else {
                        this.i = i4 - 1;
                    }
                    return charSequence.subSequence(i, b).toString();
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
