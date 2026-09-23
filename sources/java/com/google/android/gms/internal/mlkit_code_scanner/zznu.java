package com.google.android.gms.internal.mlkit_code_scanner;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zznu implements zznr {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10620a;

    public zznu(Context context, zznt zzntVar) {
        ArrayList arrayList = new ArrayList();
        this.f10620a = arrayList;
        if (zzntVar.c()) {
            arrayList.add(new zzog(context, zzntVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zznr
    public final void a(zzob zzobVar) {
        ArrayList arrayList = this.f10620a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zznr) obj).a(zzobVar);
        }
    }
}
