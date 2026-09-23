package com.google.mlkit.vision.text.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzsb;

@KeepForSdk
/* loaded from: classes3.dex */
public final class LoggingUtils {
    public static zzsb a(int i) {
        switch (i) {
            case 1:
                return zzsb.LATIN;
            case 2:
                return zzsb.LATIN_AND_CHINESE;
            case 3:
                return zzsb.LATIN_AND_DEVANAGARI;
            case 4:
                return zzsb.LATIN_AND_JAPANESE;
            case 5:
                return zzsb.LATIN_AND_KOREAN;
            case 6:
                return zzsb.CREDIT_CARD;
            case 7:
                return zzsb.DOCUMENT;
            case 8:
                return zzsb.PIXEL_AI;
            default:
                return zzsb.TYPE_UNKNOWN;
        }
    }
}
