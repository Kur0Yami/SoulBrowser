package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzao implements ValueEncoderContext {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10931a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public FieldDescriptor f10932c;
    public final zzak d;

    public zzao(zzak zzakVar) {
        this.d = zzakVar;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext b(String str) {
        if (!this.f10931a) {
            this.f10931a = true;
            this.d.b(this.f10932c, str, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext c(boolean z) {
        if (!this.f10931a) {
            this.f10931a = true;
            this.d.c(this.f10932c, z ? 1 : 0, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }
}
