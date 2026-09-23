package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzbbk {
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgxf, com.google.android.gms.internal.ads.zzgzf, java.lang.Object] */
    public static String a(Context context, String str, ArrayList arrayList) {
        if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
            return null;
        }
        final ?? obj = new Object();
        context.getPackageManager().requestChecksums(str, false, 8, arrayList, new PackageManager$OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzbbj
            public final void onChecksumsReady(List list) {
                zzgzf zzgzfVar = zzgzf.this;
                if (list == null) {
                    zzgzfVar.c(null);
                    return;
                }
                try {
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        ApkChecksum c2 = androidx.privacysandbox.ads.adservices.topics.a.c(list.get(i));
                        if (c2.getType() == 8) {
                            byte[] value = c2.getValue();
                            char[] cArr = zzazw.f4516a;
                            int length = value.length;
                            char[] cArr2 = new char[length + length];
                            for (int i2 = 0; i2 < value.length; i2++) {
                                byte b = value[i2];
                                int i3 = b & UByte.MAX_VALUE;
                                char[] cArr3 = zzazw.f4516a;
                                int i4 = i2 + i2;
                                cArr2[i4] = cArr3[i3 >>> 4];
                                cArr2[i4 + 1] = cArr3[b & 15];
                            }
                            zzgzfVar.c(new String(cArr2));
                            return;
                        }
                    }
                    zzgzfVar.c(null);
                } catch (Throwable unused) {
                    zzgzfVar.c(null);
                }
            }
        });
        return (String) obj.get();
    }
}
