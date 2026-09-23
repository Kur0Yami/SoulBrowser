package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzal implements EncoderConfig {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10423a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final zzak f10424c = zzak.f10422a;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
        this.f10423a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }
}
