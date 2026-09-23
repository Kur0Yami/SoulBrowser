package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12659a;

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        switch (this.f12659a) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
                objectEncoderContext.d(ProtobufDataEncoderContext.g, entry.getKey());
                objectEncoderContext.d(ProtobufDataEncoderContext.h, entry.getValue());
                return;
            default:
                throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
