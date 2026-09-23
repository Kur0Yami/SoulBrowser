package com.google.android.gms.internal.fido;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzbi {

    /* renamed from: a, reason: collision with root package name */
    public final String f10277a;
    public final zzbg b;

    /* renamed from: c, reason: collision with root package name */
    public zzbg f10278c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.fido.zzbg] */
    public zzbi(String str) {
        ?? obj = new Object();
        this.b = obj;
        this.f10278c = obj;
        this.f10277a = str;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.fido.zzbg] */
    public final void a(int i) {
        String valueOf = String.valueOf(i);
        ?? obj = new Object();
        this.f10278c.f10276c = obj;
        this.f10278c = obj;
        obj.b = valueOf;
        obj.f10275a = "errorCode";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.fido.zzbg] */
    public final void b(Object obj, String str) {
        ?? obj2 = new Object();
        this.f10278c.f10276c = obj2;
        this.f10278c = obj2;
        obj2.b = obj;
        obj2.f10275a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f10277a);
        sb.append('{');
        zzbg zzbgVar = this.b.f10276c;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (zzbgVar != null) {
            Object obj = zzbgVar.b;
            sb.append(str);
            String str2 = zzbgVar.f10275a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj != null && obj.getClass().isArray()) {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            } else {
                sb.append(obj);
            }
            zzbgVar = zzbgVar.f10276c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
