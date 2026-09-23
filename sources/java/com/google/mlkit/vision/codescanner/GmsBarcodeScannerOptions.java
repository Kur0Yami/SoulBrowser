package com.google.mlkit.vision.codescanner;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes3.dex */
public class GmsBarcodeScannerOptions {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f12800a;

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof GmsBarcodeScannerOptions) && this.f12800a == ((GmsBarcodeScannerOptions) obj).f12800a) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(0, Boolean.FALSE, Boolean.valueOf(this.f12800a));
    }
}
