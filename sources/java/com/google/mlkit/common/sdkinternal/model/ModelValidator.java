package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes3.dex */
public interface ModelValidator {

    @KeepForSdk
    /* loaded from: classes3.dex */
    public static class ValidationResult {

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @KeepForSdk
        /* loaded from: classes3.dex */
        public static final class ErrorCode {

            /* renamed from: c, reason: collision with root package name */
            public static final /* synthetic */ ErrorCode[] f12784c = {new Enum("OK", 0), new Enum("TFLITE_VERSION_INCOMPATIBLE", 1), new Enum("MODEL_FORMAT_INVALID", 2)};

            /* JADX INFO: Fake field, exist only in values array */
            ErrorCode EF5;

            @NonNull
            public static ErrorCode[] values() {
                return (ErrorCode[]) f12784c.clone();
            }
        }
    }
}
