package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.TransferPreferences;

/* loaded from: classes.dex */
public final class zzhm extends zzhh<TransferPreferences> {
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void L0(zzga zzgaVar) {
        this.f10191c.b(zzgaVar.f10174c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.drive.TransferPreferencesBuilder, java.lang.Object] */
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void d3(zzfj zzfjVar) {
        zzei zzeiVar = zzfjVar.f10167c;
        ?? obj = new Object();
        int i = zzeiVar.f10157c;
        int i2 = 0;
        if (i != 1 && i != 2) {
            i = 0;
        }
        obj.f3682a = i;
        obj.b = zzeiVar.g;
        int i3 = zzeiVar.f;
        if (i3 == 256 || i3 == 257) {
            i2 = i3;
        }
        obj.f3683c = i2;
        this.f10191c.b(obj.a());
    }
}
