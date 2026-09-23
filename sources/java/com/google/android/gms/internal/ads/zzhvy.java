package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzhvy implements zzhwb {

    /* renamed from: a, reason: collision with root package name */
    public final zzhwk f8842a;

    @Override // com.google.android.gms.internal.ads.zzhwb
    public final Object zza(String str) {
        String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
        zzhwc zzhwcVar = zzhwc.b;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            Provider provider = Security.getProvider(strArr[i2]);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        int size = arrayList.size();
        while (true) {
            zzhwk zzhwkVar = this.f8842a;
            if (i < size) {
                Object obj = arrayList.get(i);
                i++;
                try {
                    return zzhwkVar.a(str, (Provider) obj);
                } catch (Exception unused) {
                }
            } else {
                return zzhwkVar.a(str, null);
            }
        }
    }
}
