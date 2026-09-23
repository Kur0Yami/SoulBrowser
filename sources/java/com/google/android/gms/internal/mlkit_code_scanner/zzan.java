package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzan implements ValueEncoderContext {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10427a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public FieldDescriptor f10428c;
    public final zzaj d;

    public zzan(zzaj zzajVar) {
        this.d = zzajVar;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext b(String str) {
        if (!this.f10427a) {
            this.f10427a = true;
            this.d.b(this.f10428c, str, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext c(boolean z) {
        if (!this.f10427a) {
            this.f10427a = true;
            this.d.c(this.f10428c, z ? 1 : 0, this.b);
            return this;
        }
        throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
    }
}
