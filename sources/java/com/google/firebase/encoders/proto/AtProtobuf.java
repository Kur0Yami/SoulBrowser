package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes3.dex */
public final class AtProtobuf {

    /* renamed from: a, reason: collision with root package name */
    public int f12646a;

    /* loaded from: classes3.dex */
    public static final class ProtobufImpl implements Protobuf {

        /* renamed from: c, reason: collision with root package name */
        public final int f12647c;

        public ProtobufImpl(int i) {
            this.f12647c = i;
        }

        @Override // java.lang.annotation.Annotation
        public final Class annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Protobuf) {
                    Protobuf protobuf = (Protobuf) obj;
                    if (this.f12647c == protobuf.tag() && Protobuf.IntEncoding.f12649c.equals(protobuf.intEncoding())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return (14552422 ^ this.f12647c) + (Protobuf.IntEncoding.f12649c.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final Protobuf.IntEncoding intEncoding() {
            return Protobuf.IntEncoding.f12649c;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public final int tag() {
            return this.f12647c;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f12647c + "intEncoding=" + Protobuf.IntEncoding.f12649c + ')';
        }
    }

    public final Protobuf a() {
        return new ProtobufImpl(this.f12646a);
    }
}
