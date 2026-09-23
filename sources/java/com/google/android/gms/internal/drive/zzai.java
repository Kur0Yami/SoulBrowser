package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.DriveId;

/* loaded from: classes.dex */
final class zzai extends zzap {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaw zzawVar) {
        zzeo zzeoVar = (zzeo) zzawVar.getService();
        Preconditions.checkNotNull(null);
        zzeoVar.f3(new zzek(new DriveId(null, -1L, -1L, -1), false), new zzan(this));
    }
}
