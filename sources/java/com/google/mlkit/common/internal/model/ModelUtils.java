package com.google.mlkit.common.internal.model;

import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;

@KeepForSdk
@WorkerThread
/* loaded from: classes3.dex */
public class ModelUtils {

    @KeepForSdk
    /* loaded from: classes3.dex */
    public static abstract class AutoMLManifest {
    }

    @KeepForSdk
    /* loaded from: classes3.dex */
    public static abstract class ModelLoggingInfo {
    }

    static {
        new GmsLogger("ModelUtils", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }
}
