package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzam implements EncoderConfig {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10927a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final zzal f10928c = zzal.f10926a;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
        this.f10927a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }
}
