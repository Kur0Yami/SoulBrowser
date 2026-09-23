package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzfja {
    public static final String a(byte[] bArr, byte[] bArr2, String str, zzdwy zzdwyVar) {
        zzhai zzhaiVar;
        if (str != null) {
            try {
                try {
                    zzhaiVar = zzhai.a(new zzgzr(new ByteArrayInputStream(Base64.decode(str, 11))).a());
                } catch (IOException unused) {
                    throw new GeneralSecurityException("Parse keyset failed");
                }
            } catch (GeneralSecurityException e) {
                com.google.android.gms.ads.internal.util.zze.zza("Failed to get keysethandle".concat(e.toString()));
                com.google.android.gms.ads.internal.zzt.zzh().f("CryptoUtils.getHandle", e);
                zzhaiVar = null;
            }
            if (zzhaiVar != null) {
                try {
                    byte[] a2 = ((zzgzq) zzhaiVar.f((zzhhv) zzhhd.a(), zzgzq.class)).a(bArr, bArr2);
                    zzdwyVar.f6219a.put("ds", "1");
                    return new String(a2, "UTF-8");
                } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e2) {
                    com.google.android.gms.ads.internal.util.zze.zza("Failed to decrypt ".concat(e2.toString()));
                    com.google.android.gms.ads.internal.zzt.zzh().f("CryptoUtils.decrypt", e2);
                    zzdwyVar.f6219a.put("dsf", e2.toString());
                }
            }
        }
        return null;
    }
}
