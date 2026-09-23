package com.nostra13.universalimageloader.core.assist;

/* loaded from: classes3.dex */
public class FailReason {

    /* renamed from: a, reason: collision with root package name */
    public final FailType f20985a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class FailType {

        /* renamed from: c, reason: collision with root package name */
        public static final FailType f20986c;
        public static final FailType f;
        public static final FailType g;
        public static final FailType h;
        public static final FailType i;
        public static final /* synthetic */ FailType[] j;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.nostra13.universalimageloader.core.assist.FailReason$FailType, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.nostra13.universalimageloader.core.assist.FailReason$FailType, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.nostra13.universalimageloader.core.assist.FailReason$FailType, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.nostra13.universalimageloader.core.assist.FailReason$FailType, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [com.nostra13.universalimageloader.core.assist.FailReason$FailType, java.lang.Enum] */
        static {
            ?? r0 = new Enum("IO_ERROR", 0);
            f20986c = r0;
            ?? r1 = new Enum("DECODING_ERROR", 1);
            f = r1;
            ?? r3 = new Enum("NETWORK_DENIED", 2);
            g = r3;
            ?? r5 = new Enum("OUT_OF_MEMORY", 3);
            h = r5;
            ?? r7 = new Enum("UNKNOWN", 4);
            i = r7;
            j = new FailType[]{r0, r1, r3, r5, r7};
        }

        public static FailType valueOf(String str) {
            return (FailType) Enum.valueOf(FailType.class, str);
        }

        public static FailType[] values() {
            return (FailType[]) j.clone();
        }
    }

    public FailReason(FailType failType) {
        this.f20985a = failType;
    }
}
