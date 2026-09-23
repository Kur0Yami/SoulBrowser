package com.google.android.gms.internal.drive;

import android.os.Bundle;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* loaded from: classes.dex */
public final class zzaa extends Metadata {

    /* renamed from: a, reason: collision with root package name */
    public final MetadataBundle f10136a;

    public zzaa(MetadataBundle metadataBundle) {
        this.f10136a = metadataBundle;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final Metadata freeze() {
        MetadataBundle metadataBundle = this.f10136a;
        metadataBundle.getClass();
        return new zzaa(new MetadataBundle(new Bundle(metadataBundle.f3701c)));
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        if (this.f10136a != null) {
            return true;
        }
        return false;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10136a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 17);
        sb.append("Metadata [mImpl=");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }
}
