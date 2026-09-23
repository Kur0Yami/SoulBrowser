package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzery implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6867a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6868c;

    public zzery(zzgyw zzgywVar, zzfik zzfikVar, int i) {
        this.f6867a = zzgywVar;
        this.b = zzfikVar;
        this.f6868c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6867a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzerx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List asList;
                byte[] bArr;
                zzhan zzhanVar;
                zzery zzeryVar = zzery.this;
                String str = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.R7)).booleanValue()) {
                    zzfik zzfikVar = zzeryVar.b;
                    if (zzeryVar.f6868c != 2) {
                        String zzc = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfikVar.d);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T7)).booleanValue()) {
                            asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U7)).split(","));
                        } else {
                            asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S7)).split(","));
                        }
                        if (asList.contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(zzc))) {
                            try {
                                zzhja zzhjaVar = zzhja.b;
                                synchronized (zzhjaVar) {
                                    HashMap hashMap = zzhjaVar.f8587a;
                                    if (hashMap.containsKey("AES128_GCM")) {
                                        zzhanVar = (zzhan) hashMap.get("AES128_GCM");
                                    } else {
                                        throw new GeneralSecurityException("Name AES128_GCM does not exist");
                                    }
                                }
                                if (zzhanVar == null) {
                                    try {
                                        zzhanVar = zzhat.a(((zzhka) zzhje.b.h(null)).b.h());
                                    } catch (GeneralSecurityException e) {
                                        throw new RuntimeException("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e);
                                    }
                                }
                                zzhai e2 = zzhai.e(zzhanVar);
                                try {
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    try {
                                        e2.b().f(byteArrayOutputStream);
                                        byteArrayOutputStream.close();
                                        bArr = byteArrayOutputStream.toByteArray();
                                    } catch (Throwable th) {
                                        byteArrayOutputStream.close();
                                        throw th;
                                    }
                                } catch (IOException unused) {
                                    throw new GeneralSecurityException("Serialize keyset failed");
                                }
                            } catch (GeneralSecurityException e3) {
                                com.google.android.gms.ads.internal.util.zze.zza("Failed to generate key".concat(e3.toString()));
                                com.google.android.gms.ads.internal.zzt.zzh().f("CryptoUtils.generateKey", e3);
                                bArr = new byte[0];
                            }
                            str = Base64.encodeToString(bArr, 11);
                        }
                    }
                }
                return new zzerz(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 5;
    }
}
