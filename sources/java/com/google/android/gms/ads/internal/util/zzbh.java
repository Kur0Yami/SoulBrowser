package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzarp;
import com.google.android.gms.internal.ads.zzasn;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbh extends zzasn {
    public final /* synthetic */ byte[] s;
    public final /* synthetic */ Map t;
    public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzl u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbh(zzbl zzblVar, int i, String str, zzarp zzarpVar, zzaro zzaroVar, byte[] bArr, Map map, com.google.android.gms.ads.internal.util.client.zzl zzlVar) {
        super(i, str, zzarpVar, zzaroVar);
        this.s = bArr;
        this.t = map;
        this.u = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasn, com.google.android.gms.internal.ads.zzark
    /* renamed from: h */
    public final void d(String str) {
        this.u.zze(str);
        super.d(str);
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final Map zzm() {
        Map map = this.t;
        if (map == null) {
            return Collections.EMPTY_MAP;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final byte[] zzn() {
        byte[] bArr = this.s;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }
}
