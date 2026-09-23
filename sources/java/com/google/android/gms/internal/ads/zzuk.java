package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
import androidx.annotation.RequiresApi;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public final class zzuk {
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        boolean z;
        int i3;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints != null && !supportedPerformancePoints.isEmpty()) {
            MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(i, i2, (int) d);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 < supportedPerformancePoints.size()) {
                    if (e.d(supportedPerformancePoints.get(i4)).covers(performancePoint)) {
                        i3 = 2;
                        break;
                    }
                    i4++;
                } else {
                    i3 = 1;
                    break;
                }
            }
            if (i3 == 1 && zzul.f9296a == null) {
                if (Build.VERSION.SDK_INT < 35) {
                    int b = b(false);
                    int b2 = b(true);
                    if (b != 0) {
                        if (b2 == 0) {
                        }
                    }
                    zzul.f9296a = Boolean.valueOf(z);
                    if (!z) {
                    }
                }
                z = false;
                zzul.f9296a = Boolean.valueOf(z);
                if (!z) {
                }
            }
            return i3;
        }
        return 0;
    }

    public static int b(boolean z) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        try {
            zzt zztVar = new zzt();
            zztVar.e("video/avc");
            zzv zzvVar = new zzv(zztVar);
            if (zzvVar.m != null) {
                zzus zzusVar = zzus.f9302a;
                List b = zzvc.b(zzur.b, zzvVar, z, false);
                for (int i = 0; i < ((zzguy) b).h; i++) {
                    zzguy zzguyVar = (zzguy) b;
                    if (((zzuj) zzguyVar.get(i)).d != null && (videoCapabilities = ((zzuj) zzguyVar.get(i)).d.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60);
                        for (int i2 = 0; i2 < supportedPerformancePoints.size(); i2++) {
                            if (e.d(supportedPerformancePoints.get(i2)).covers(performancePoint)) {
                                return 2;
                            }
                        }
                        return 1;
                    }
                }
            }
        } catch (zzuu unused) {
        }
        return 0;
    }
}
