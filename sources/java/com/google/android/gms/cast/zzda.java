package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzda implements com.google.android.gms.cast.internal.zzat {
    @Override // com.google.android.gms.cast.internal.zzat
    public final void a(long j, long j2, long j3, String str) {
        try {
            new zzdb(null, new Status(2103));
            throw null;
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestReplaced", e);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void b(String str, long j, int i, Object obj, long j2, long j3) {
        try {
            new zzdd(new Status(i));
            throw null;
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestCompleted", e);
        }
    }
}
