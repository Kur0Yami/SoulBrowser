package com.google.mlkit.vision.codescanner.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzc implements OptionalModuleApi {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzc f12804c = new Object();

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        AtomicReference atomicReference = zze.i;
        return new Feature[]{OptionalModuleUtils.b};
    }
}
