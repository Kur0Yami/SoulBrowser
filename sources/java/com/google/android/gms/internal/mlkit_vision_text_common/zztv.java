package com.google.android.gms.internal.mlkit_vision_text_common;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zztv implements zzts {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f11415a;

    public zztv(Context context, zztu zztuVar) {
        ArrayList arrayList = new ArrayList();
        this.f11415a = arrayList;
        if (zztuVar.c()) {
            arrayList.add(new zzuk(context, zztuVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzts
    public final void a(zztr zztrVar) {
        ArrayList arrayList = this.f11415a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zzts) obj).a(zztrVar);
        }
    }
}
