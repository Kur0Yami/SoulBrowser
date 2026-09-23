package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import kotlin.io.ConstantsKt;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzbdo {

    /* renamed from: a, reason: collision with root package name */
    public ByteArrayOutputStream f4576a = new ByteArrayOutputStream(ConstantsKt.DEFAULT_BLOCK_SIZE);
    public Base64OutputStream b = new Base64OutputStream(this.f4576a, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        try {
            this.b.close();
        } catch (IOException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f4576a.close();
                str = this.f4576a.toString();
            } catch (IOException e2) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("HashManager: Unable to convert to Base64.", e2);
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return str;
        } finally {
            this.f4576a = null;
            this.b = null;
        }
    }
}
