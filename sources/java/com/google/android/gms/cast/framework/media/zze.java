package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zze extends com.google.android.gms.internal.cast.zza implements zzg {
    @Override // com.google.android.gms.cast.framework.media.zzg
    public final List zzf() {
        Parcel f2 = f2(3, I1());
        ArrayList createTypedArrayList = f2.createTypedArrayList(NotificationAction.CREATOR);
        f2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.cast.framework.media.zzg
    public final int[] zzg() {
        Parcel f2 = f2(4, I1());
        int[] createIntArray = f2.createIntArray();
        f2.recycle();
        return createIntArray;
    }
}
