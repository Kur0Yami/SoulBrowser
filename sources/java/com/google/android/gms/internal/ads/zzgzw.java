package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzgzw implements zzhaj {
    public static final Charset b = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayInputStream f8314a;

    public zzgzw(ByteArrayInputStream byteArrayInputStream) {
        this.f8314a = byteArrayInputStream;
    }

    public static int b(zzhxj zzhxjVar) {
        if (zzhxjVar instanceof zzhxn) {
            if (zzhxjVar.g().f8871c instanceof Number) {
                Number i = zzhxjVar.g().i();
                try {
                    if (i instanceof zzhhx) {
                        long parseLong = Long.parseLong(((zzhhx) i).f8565c);
                        if (parseLong <= 4294967295L && parseLong >= -2147483648L) {
                            return (int) parseLong;
                        }
                        throw new IOException("invalid key id");
                    }
                    throw new IllegalArgumentException("does not contain a parsed number.");
                } catch (NumberFormatException e) {
                    throw new IOException(e);
                }
            }
            throw new IOException("invalid key id: not a JSON number");
        }
        throw new IOException("invalid key id: not a JSON primitive");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0120. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0166 A[Catch: all -> 0x0031, IllegalStateException -> 0x0034, zzhxm -> 0x0037, TryCatch #0 {all -> 0x0031, blocks: (B:3:0x0016, B:4:0x0023, B:6:0x002b, B:8:0x003a, B:10:0x0053, B:12:0x005b, B:14:0x0065, B:16:0x006f, B:18:0x0082, B:20:0x0088, B:22:0x009a, B:24:0x00a0, B:26:0x00a6, B:28:0x00ac, B:30:0x00b4, B:40:0x00f6, B:44:0x012d, B:45:0x0150, B:47:0x0166, B:49:0x016c, B:51:0x0172, B:55:0x01be, B:57:0x01e1, B:64:0x01c9, B:69:0x01d4, B:74:0x01df, B:59:0x0214, B:60:0x021d, B:79:0x021e, B:80:0x0225, B:88:0x0138, B:92:0x0143, B:96:0x014e, B:84:0x0226, B:85:0x022f, B:100:0x0230, B:101:0x0239, B:112:0x023a, B:113:0x0241, B:115:0x0242, B:116:0x0249, B:121:0x024a, B:124:0x0254, B:125:0x025b, B:126:0x025c, B:127:0x0263, B:128:0x0264, B:129:0x026b, B:136:0x026c, B:137:0x0271), top: B:2:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x021e A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0226 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzhpj a() {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzw.a():com.google.android.gms.internal.ads.zzhpj");
    }
}
