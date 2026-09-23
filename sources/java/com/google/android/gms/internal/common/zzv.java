package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzv extends zzk {
    public final CharSequence g;
    public final boolean h;
    public int i;
    public int j;

    public zzv(zzw zzwVar, CharSequence charSequence) {
        this.f = 2;
        this.i = 0;
        zzwVar.getClass();
        this.h = zzwVar.f9919a;
        this.j = Integer.MAX_VALUE;
        this.g = charSequence;
    }

    @Override // com.google.android.gms.internal.common.zzk
    public final String a() {
        int b;
        CharSequence charSequence;
        int c2;
        int i = this.i;
        while (true) {
            int i2 = this.i;
            if (i2 != -1) {
                b = b(i2);
                charSequence = this.g;
                if (b == -1) {
                    b = charSequence.length();
                    this.i = -1;
                    c2 = -1;
                } else {
                    c2 = c(b);
                    this.i = c2;
                }
                if (c2 == i) {
                    int i3 = c2 + 1;
                    this.i = i3;
                    if (i3 > charSequence.length()) {
                        this.i = -1;
                    }
                } else {
                    if (i < b) {
                        charSequence.charAt(i);
                    }
                    if (i < b) {
                        charSequence.charAt(b - 1);
                    }
                    if (!this.h || i != b) {
                        break;
                    }
                    i = this.i;
                }
            } else {
                this.f = 3;
                return null;
            }
        }
        int i4 = this.j;
        if (i4 == 1) {
            b = charSequence.length();
            this.i = -1;
            if (b > i) {
                charSequence.charAt(b - 1);
            }
        } else {
            this.j = i4 - 1;
        }
        return charSequence.subSequence(i, b).toString();
    }

    public abstract int b(int i);

    public abstract int c(int i);
}
