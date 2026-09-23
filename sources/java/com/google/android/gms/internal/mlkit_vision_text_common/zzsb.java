package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
public enum zzsb implements zzcv {
    TYPE_UNKNOWN(0),
    LATIN(1),
    LATIN_AND_CHINESE(2),
    LATIN_AND_DEVANAGARI(3),
    LATIN_AND_JAPANESE(4),
    LATIN_AND_KOREAN(5),
    CREDIT_CARD(6),
    DOCUMENT(7),
    PIXEL_AI(8);


    /* renamed from: c, reason: collision with root package name */
    public final int f11405c;

    zzsb(int i) {
        this.f11405c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcv
    public final int zza() {
        return this.f11405c;
    }
}
