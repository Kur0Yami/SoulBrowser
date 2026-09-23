package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
final /* synthetic */ class zzp implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzp f3050c = new Object();

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        List list = RequestConfiguration.zza;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
