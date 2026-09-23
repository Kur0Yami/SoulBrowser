package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzgpr;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzaq implements zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzaq f3231a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgpr
    public final /* synthetic */ Object apply(Object obj) {
        ArrayList arrayList = zzau.K;
        return ((JSONObject) obj).optString("nas");
    }
}
