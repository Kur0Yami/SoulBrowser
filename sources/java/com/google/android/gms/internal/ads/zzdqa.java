package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdqa {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzbl f6015a;
    public final Clock b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6016c;

    public zzdqa(com.google.android.gms.ads.internal.util.zzbl zzblVar, Clock clock, Executor executor) {
        this.f6015a = zzblVar;
        this.b = clock;
        this.f6016c = executor;
    }

    public final Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        Clock clock = this.b;
        long elapsedRealtime = clock.elapsedRealtime();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = clock.elapsedRealtime();
        if (decodeByteArray != null) {
            long j = elapsedRealtime2 - elapsedRealtime;
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            int length = String.valueOf(width).length();
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + length + 20 + String.valueOf(height).length() + 8 + String.valueOf(allocationByteCount).length() + 7 + 15 + String.valueOf(z).length());
            androidx.work.impl.workers.a.A(sb, "Decoded image w: ", width, " h:", height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j);
            sb.append(" on ui thread: ");
            sb.append(z);
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        }
        return decodeByteArray;
    }
}
