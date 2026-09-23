package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.annotations.ExtraProperty;

@ExtraProperty
/* loaded from: classes3.dex */
public @interface Protobuf {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class IntEncoding {

        /* renamed from: c, reason: collision with root package name */
        public static final IntEncoding f12649c;
        public static final /* synthetic */ IntEncoding[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.encoders.proto.Protobuf$IntEncoding] */
        static {
            ?? r0 = new Enum("DEFAULT", 0);
            f12649c = r0;
            f = new IntEncoding[]{r0, new Enum("SIGNED", 1), new Enum("FIXED", 2)};
        }

        public static IntEncoding valueOf(String str) {
            return (IntEncoding) Enum.valueOf(IntEncoding.class, str);
        }

        public static IntEncoding[] values() {
            return (IntEncoding[]) f.clone();
        }
    }

    IntEncoding intEncoding() default IntEncoding.f12649c;

    int tag();
}
