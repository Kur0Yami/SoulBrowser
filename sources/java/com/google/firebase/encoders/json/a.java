package com.google.firebase.encoders.json;

import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements ObjectEncoder {
    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        a aVar = JsonDataEncoderBuilder.e;
        throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }
}
