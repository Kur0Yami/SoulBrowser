package com.google.mlkit.vision.text.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;

@KeepForSdk
/* loaded from: classes3.dex */
public final class TextOptionalModuleUtils {
    public static Feature[] a(TextRecognizerOptionsInterface textRecognizerOptionsInterface) {
        if (textRecognizerOptionsInterface.g()) {
            return OptionalModuleUtils.f12777a;
        }
        switch (textRecognizerOptionsInterface.d()) {
            case 2:
                return new Feature[]{OptionalModuleUtils.d};
            case 3:
                return new Feature[]{OptionalModuleUtils.f};
            case 4:
                return new Feature[]{OptionalModuleUtils.g};
            case 5:
                return new Feature[]{OptionalModuleUtils.h};
            case 6:
            case 7:
            case 8:
                return new Feature[]{OptionalModuleUtils.e};
            default:
                return new Feature[]{OptionalModuleUtils.f12778c};
        }
    }
}
