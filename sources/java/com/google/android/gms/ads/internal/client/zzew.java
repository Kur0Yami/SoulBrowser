package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.internal.ads.zzbps;
import com.google.android.gms.internal.ads.zzbpv;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class zzew extends zzbps {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzex f3024c;

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void F3(List list) {
        int i;
        ArrayList arrayList;
        zzex zzexVar = this.f3024c;
        synchronized (zzexVar.d) {
            zzexVar.g = false;
            zzexVar.h = true;
            arrayList = new ArrayList(zzexVar.f);
            zzexVar.f.clear();
        }
        zzbpv a2 = zzex.a(list);
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(a2);
        }
    }
}
