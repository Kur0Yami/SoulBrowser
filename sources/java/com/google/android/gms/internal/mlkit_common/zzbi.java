package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbi implements ValueEncoderContext {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10668a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public FieldDescriptor f10669c;
    public final zzbe d;

    public zzbi(zzbe zzbeVar) {
        this.d = zzbeVar;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext b(String str) {
        if (!this.f10668a) {
            this.f10668a = true;
            this.d.b(this.f10669c, str, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext c(boolean z) {
        if (!this.f10668a) {
            this.f10668a = true;
            this.d.c(this.f10669c, z ? 1 : 0, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }
}
