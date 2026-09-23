package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ProtobufValueEncoderContext implements ValueEncoderContext {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12657a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public FieldDescriptor f12658c;
    public final ProtobufDataEncoderContext d;

    public ProtobufValueEncoderContext(ProtobufDataEncoderContext protobufDataEncoderContext) {
        this.d = protobufDataEncoderContext;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext b(String str) {
        if (!this.f12657a) {
            this.f12657a = true;
            this.d.e(this.f12658c, str, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext c(boolean z) {
        if (!this.f12657a) {
            this.f12657a = true;
            this.d.b(this.f12658c, z ? 1 : 0, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }
}
