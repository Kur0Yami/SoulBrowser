package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzgmo implements zzglz {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8132a = new ArrayList();

    @Override // com.google.android.gms.internal.ads.zzglz
    public final synchronized void c(HashMap hashMap, Context context, View view) {
        ArrayList arrayList = this.f8132a;
        hashMap.put("vst", new ArrayList(arrayList));
        arrayList.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void a(HashMap hashMap) {
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void b(HashMap hashMap) {
    }
}
