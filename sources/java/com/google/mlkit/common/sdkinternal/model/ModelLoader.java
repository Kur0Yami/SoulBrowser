package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;

@KeepForSdk
@WorkerThread
/* loaded from: classes3.dex */
public class ModelLoader {

    @KeepForSdk
    /* loaded from: classes3.dex */
    public interface ModelContentHandler {
    }

    @KeepForSdk
    /* loaded from: classes3.dex */
    public interface ModelLoadingLogger {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @KeepForSdk
    /* loaded from: classes3.dex */
    public static final class ModelLoadingState {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ModelLoadingState[] f12783c = {new Enum("NO_MODEL_LOADED", 0), new Enum("REMOTE_MODEL_LOADED", 1), new Enum("LOCAL_MODEL_LOADED", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        ModelLoadingState EF5;

        @NonNull
        public static ModelLoadingState[] values() {
            return (ModelLoadingState[]) f12783c.clone();
        }
    }

    static {
        new GmsLogger("ModelLoader", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }
}
