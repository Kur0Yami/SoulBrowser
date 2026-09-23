package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@KeepForSdk
/* loaded from: classes3.dex */
public final class ModelType {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ModelType[] f12776c = {new Enum("UNKNOWN", 0), new Enum("BASE", 1), new Enum("TRANSLATE", 2), new Enum("ENTITY_EXTRACTION", 3), new Enum("CUSTOM", 4), new Enum("DIGITAL_INK", 5), new Enum("DIGITAL_INK_SEGMENTATION", 6), new Enum("TOXICITY_DETECTION", 7), new Enum("IMAGE_CAPTIONING", 8)};

    /* JADX INFO: Fake field, exist only in values array */
    ModelType EF5;

    @NonNull
    public static ModelType[] values() {
        return (ModelType[]) f12776c.clone();
    }
}
