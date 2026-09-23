package com.google.mlkit.vision.codescanner.internal;

import com.google.android.gms.internal.mlkit_code_scanner.zzoz;
import com.google.mlkit.vision.barcode.common.internal.BarcodeSource;

/* loaded from: classes3.dex */
final class zza implements BarcodeSource {

    /* renamed from: a, reason: collision with root package name */
    public final zzoz f12801a;

    public zza(zzoz zzozVar) {
        this.f12801a = zzozVar;
    }

    @Override // com.google.mlkit.vision.barcode.common.internal.BarcodeSource
    public final String a() {
        return this.f12801a.f;
    }
}
