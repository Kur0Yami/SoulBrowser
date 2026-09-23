package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzidq extends IllegalArgumentException {
    public zzidq(int i, int i2) {
        super(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 32 + String.valueOf(i2).length()), "Unpaired surrogate at index ", i, " of ", i2));
    }
}
