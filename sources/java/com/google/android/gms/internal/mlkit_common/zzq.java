package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzq {

    /* renamed from: a, reason: collision with root package name */
    public final String f10891a;
    public final zzo b;

    /* renamed from: c, reason: collision with root package name */
    public zzo f10892c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzo] */
    public zzq(String str) {
        ?? obj = new Object();
        this.b = obj;
        this.f10892c = obj;
        this.f10891a = str;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzo] */
    public final void a(String str) {
        ?? obj = new Object();
        this.f10892c.f10890c = obj;
        this.f10892c = obj;
        obj.b = null;
        obj.f10889a = str;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzo] */
    public final void b() {
        String valueOf = String.valueOf(false);
        ?? obj = new Object();
        this.f10892c.f10890c = obj;
        this.f10892c = obj;
        obj.b = valueOf;
        obj.f10889a = "isManifestFile";
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f10891a);
        sb.append('{');
        zzo zzoVar = this.b.f10890c;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (zzoVar != null) {
            String str2 = zzoVar.b;
            sb.append(str);
            String str3 = zzoVar.f10889a;
            if (str3 != null) {
                sb.append(str3);
                sb.append('=');
            }
            if (str2 != null && str2.getClass().isArray()) {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{str2}), 1, r3.length() - 1);
            } else {
                sb.append((Object) str2);
            }
            zzoVar = zzoVar.f10890c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
