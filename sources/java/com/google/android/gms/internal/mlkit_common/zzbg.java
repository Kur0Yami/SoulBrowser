package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzbg implements EncoderConfig {
    public static final zzbf d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10664a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final zzbf f10665c = d;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
        this.f10664a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }
}
