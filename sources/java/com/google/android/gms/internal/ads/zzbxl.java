package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbxl extends zzbcb implements zzbxn {
    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void n4(List list) {
        Parcel I1 = I1();
        I1.writeTypedList(list);
        r2(1, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(2, I1);
    }
}
