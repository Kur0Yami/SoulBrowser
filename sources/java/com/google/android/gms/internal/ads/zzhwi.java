package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;

/* loaded from: classes.dex */
public final class zzhwi implements zzhwk {
    @Override // com.google.android.gms.internal.ads.zzhwk
    public final /* bridge */ /* synthetic */ Object a(String str, Provider provider) {
        if (provider == null) {
            return MessageDigest.getInstance(str);
        }
        return MessageDigest.getInstance(str, provider);
    }
}
