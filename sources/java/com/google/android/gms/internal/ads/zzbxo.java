package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbxo extends zzccf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QueryInfoGenerationCallback f4961c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbxo(zzbxp zzbxpVar, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
        this.f4961c = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzccg
    public final void W4(String str, Bundle bundle, String str2) {
        this.f4961c.onSuccess(new QueryInfo(new com.google.android.gms.ads.internal.client.zzfa(str, bundle, str2)));
    }

    @Override // com.google.android.gms.internal.ads.zzccg
    public final void a(String str) {
        this.f4961c.onFailure(str);
    }
}
