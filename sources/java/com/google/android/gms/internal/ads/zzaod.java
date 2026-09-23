package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaod implements zzapt {

    /* renamed from: a, reason: collision with root package name */
    public final List f4265a;

    public zzaod(List list) {
        this.f4265a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    public final List a(zzaps zzapsVar) {
        boolean z;
        String str;
        int i;
        List list;
        byte[] bArr;
        zzer zzerVar = new zzer(zzapsVar.f4328c);
        ArrayList arrayList = this.f4265a;
        while (zzerVar.B() > 0) {
            int K = zzerVar.K();
            int K2 = zzerVar.b + zzerVar.K();
            if (K == 134) {
                arrayList = new ArrayList();
                int K3 = zzerVar.K() & 31;
                for (int i2 = 0; i2 < K3; i2++) {
                    String k = zzerVar.k(3, StandardCharsets.UTF_8);
                    int K4 = zzerVar.K();
                    if ((K4 & Uuid.SIZE_BITS) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i = K4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte K5 = (byte) zzerVar.K();
                    zzerVar.G(1);
                    if (z) {
                        int i3 = K5 & 64;
                        byte[] bArr2 = zzdo.f5952a;
                        if (i3 != 0) {
                            bArr = new byte[]{1};
                        } else {
                            bArr = new byte[]{0};
                        }
                        list = Collections.singletonList(bArr);
                    } else {
                        list = null;
                    }
                    zzt zztVar = new zzt();
                    zztVar.e(str);
                    zztVar.d = k;
                    zztVar.I = i;
                    zztVar.o = list;
                    arrayList.add(new zzv(zztVar));
                }
            }
            zzerVar.E(K2);
            arrayList = arrayList;
        }
        return arrayList;
    }
}
