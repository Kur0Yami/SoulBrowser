package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzdd implements ValueEncoderContext {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11155a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public FieldDescriptor f11156c;
    public final zzcz d;

    public zzdd(zzcz zzczVar) {
        this.d = zzczVar;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext b(String str) {
        if (!this.f11155a) {
            this.f11155a = true;
            this.d.b(this.f11156c, str, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext c(boolean z) {
        if (!this.f11155a) {
            this.f11155a = true;
            this.d.c(this.f11156c, z ? 1 : 0, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }
}
