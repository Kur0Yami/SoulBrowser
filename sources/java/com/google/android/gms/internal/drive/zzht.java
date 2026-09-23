package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
final class zzht extends com.google.android.gms.drive.metadata.internal.zzb {
    @Override // com.google.android.gms.drive.metadata.internal.zzb, com.google.android.gms.drive.metadata.zza
    /* renamed from: g */
    public final Boolean f(DataHolder dataHolder, int i, int i2) {
        boolean z;
        if (dataHolder.getInteger("trashed", i, i2) == 2) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
