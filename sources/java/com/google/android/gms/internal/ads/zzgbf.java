package com.google.android.gms.internal.ads;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final /* synthetic */ class zzgbf implements CallbackToFutureAdapter.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgbi f7793a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f7794c;
    public final /* synthetic */ String d;
    public final /* synthetic */ byte[] e;

    public /* synthetic */ zzgbf(zzgbi zzgbiVar, String str, boolean z, String str2, byte[] bArr) {
        this.f7793a = zzgbiVar;
        this.b = str;
        this.f7794c = z;
        this.d = str2;
        this.e = bArr;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final /* synthetic */ Object a(final CallbackToFutureAdapter.Completer completer) {
        final zzgbi zzgbiVar = this.f7793a;
        final String str = this.b;
        final boolean z = this.f7794c;
        final String str2 = this.d;
        final byte[] bArr = this.e;
        zzgbiVar.f7797a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgbe
            /* JADX WARN: Removed duplicated region for block: B:41:0x0101  */
            /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 267
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgbe.run():void");
            }
        });
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
