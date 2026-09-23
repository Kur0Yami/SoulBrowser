package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.Topic;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final /* synthetic */ class zzfaq implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzfaq f7167a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
        if (getTopicsResponse == null) {
            return zzgym.a(new zzfas(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 1));
        }
        zziek D = zziel.D();
        for (Topic topic : getTopicsResponse.f1467a) {
            zziei D2 = zziej.D();
            int i = topic.f1469c;
            D2.k();
            ((zziej) D2.f).E(i);
            long j = topic.b;
            D2.k();
            ((zziej) D2.f).F(j);
            long j2 = topic.f1468a;
            D2.k();
            ((zziej) D2.f).G(j2);
            zziej zziejVar = (zziej) D2.m();
            D.k();
            ((zziel) D.f).E(zziejVar);
        }
        return zzgym.a(new zzfas(Base64.encodeToString(((zziel) D.m()).h(), 1), 1));
    }
}
