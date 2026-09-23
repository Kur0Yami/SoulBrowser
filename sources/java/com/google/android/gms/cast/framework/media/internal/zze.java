package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zze extends com.google.android.gms.internal.cast.zza implements zzg {
    @Override // com.google.android.gms.cast.framework.media.internal.zzg
    public final Bitmap q0(Uri uri) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.b(I1, uri);
        Parcel f2 = f2(1, I1);
        Bitmap bitmap = (Bitmap) com.google.android.gms.internal.cast.zzc.a(f2, Bitmap.CREATOR);
        f2.recycle();
        return bitmap;
    }
}
