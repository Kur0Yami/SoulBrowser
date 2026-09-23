package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@KeepForSdk
/* loaded from: classes3.dex */
public final class BaseModel {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ BaseModel[] f12782c = {new Enum("FACE_DETECTION", 0), new Enum("SMART_REPLY", 1), new Enum("TRANSLATE", 2), new Enum("ENTITY_EXTRACTION", 3), new Enum("TOXICITY_DETECTION", 4), new Enum("IMAGE_CAPTIONING", 5)};

    /* JADX INFO: Fake field, exist only in values array */
    BaseModel EF5;

    @NonNull
    public static BaseModel[] values() {
        return (BaseModel[]) f12782c.clone();
    }
}
