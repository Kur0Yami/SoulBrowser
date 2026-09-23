package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public class zzasn extends zzark {
    public final Object q;
    public final zzarp r;

    public zzasn(int i, String str, zzarp zzarpVar, zzaro zzaroVar) {
        super(i, str, zzaroVar);
        this.q = new Object();
        this.r = zzarpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final zzarq c(zzarg zzargVar) {
        String str;
        String str2;
        byte[] bArr = zzargVar.b;
        try {
            Map map = zzargVar.f4365c;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get(HttpConnection.CONTENT_TYPE)) != null) {
                String[] split2 = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= split2.length) {
                        break;
                    }
                    String[] split3 = split2[i].trim().split("=", 0);
                    if (split3.length == 2 && split3[0].equals("charset")) {
                        str3 = split3[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(bArr);
        }
        return new zzarq(str, zzash.a(zzargVar));
    }

    @Override // com.google.android.gms.internal.ads.zzark
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(String str) {
        zzarp zzarpVar;
        synchronized (this.q) {
            zzarpVar = this.r;
        }
        zzarpVar.zza(str);
    }
}
