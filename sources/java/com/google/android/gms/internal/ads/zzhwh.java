package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class zzhwh implements zzhwk {
    @Override // com.google.android.gms.internal.ads.zzhwk
    public final /* bridge */ /* synthetic */ Object a(String str, Provider provider) {
        if (provider == null) {
            return Mac.getInstance(str);
        }
        return Mac.getInstance(str, provider);
    }
}
