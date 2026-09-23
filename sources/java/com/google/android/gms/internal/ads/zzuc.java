package com.google.android.gms.internal.ads;

import android.media.LoudnessCodecController;
import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import androidx.annotation.RequiresApi;
import java.util.HashSet;
import java.util.Iterator;

@RequiresApi
/* loaded from: classes.dex */
public final class zzuc {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f9290a = new HashSet();
    public LoudnessCodecController b;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener] */
    public final void a(int i) {
        LoudnessCodecController loudnessCodecController = this.b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.b = null;
        }
        LoudnessCodecController create = LoudnessCodecController.create(i, zzgyb.f8301c, (LoudnessCodecController$OnLoudnessCodecUpdateListener) new Object());
        this.b = create;
        Iterator it = this.f9290a.iterator();
        while (it.hasNext()) {
            if (!create.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }

    public final void b(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.b;
        if (loudnessCodecController != null && !loudnessCodecController.addMediaCodec(mediaCodec)) {
            return;
        }
        zzgqa.f(this.f9290a.add(mediaCodec));
    }

    public final void c(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (this.f9290a.remove(mediaCodec) && (loudnessCodecController = this.b) != null) {
            loudnessCodecController.removeMediaCodec(mediaCodec);
        }
    }

    public final void d() {
        this.f9290a.clear();
        LoudnessCodecController loudnessCodecController = this.b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }
}
