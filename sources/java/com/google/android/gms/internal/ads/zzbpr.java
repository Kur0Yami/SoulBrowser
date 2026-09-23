package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbpr extends zzbcb implements zzbpt {
    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void F3(List list) {
        Parcel I1 = I1();
        I1.writeTypedList(list);
        r2(1, I1);
    }
}
