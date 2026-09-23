package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzsc implements zzrz {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10902a;

    public zzsc(Context context, zzsb zzsbVar) {
        ArrayList arrayList = new ArrayList();
        this.f10902a = arrayList;
        if (zzsbVar.c()) {
            arrayList.add(new zzsp(context, zzsbVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzrz
    public final void a(zzsk zzskVar) {
        ArrayList arrayList = this.f10902a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zzrz) obj).a(zzskVar);
        }
    }
}
