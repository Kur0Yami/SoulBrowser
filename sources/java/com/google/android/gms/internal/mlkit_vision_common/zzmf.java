package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzmf implements zzmc {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f11103a;

    public zzmf(Context context, zzme zzmeVar) {
        ArrayList arrayList = new ArrayList();
        this.f11103a = arrayList;
        if (zzmeVar.c()) {
            arrayList.add(new zzmp(context, zzmeVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzmc
    public final void a(zzmk zzmkVar) {
        ArrayList arrayList = this.f11103a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zzmc) obj).a(zzmkVar);
        }
    }
}
