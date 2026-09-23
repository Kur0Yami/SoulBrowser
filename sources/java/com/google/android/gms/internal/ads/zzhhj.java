package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhhj {

    /* renamed from: a, reason: collision with root package name */
    public final zzhhk f8547a;
    public final long[] b;

    public zzhhj(zzhhk zzhhkVar, long[] jArr) {
        this.f8547a = zzhhkVar;
        this.b = jArr;
    }

    public zzhhj() {
        zzhhj zzhhjVar = zzhhm.b;
        this.f8547a = new zzhhk(zzhhjVar.f8547a);
        this.b = Arrays.copyOf(zzhhjVar.b, 10);
    }
}
