package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DecodeFormat {

    /* renamed from: c, reason: collision with root package name */
    public static final DecodeFormat f2147c;
    public static final DecodeFormat f;
    public static final DecodeFormat g;
    public static final /* synthetic */ DecodeFormat[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.load.DecodeFormat, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.bumptech.glide.load.DecodeFormat, java.lang.Enum] */
    static {
        ?? r0 = new Enum("PREFER_ARGB_8888", 0);
        f2147c = r0;
        ?? r1 = new Enum("PREFER_RGB_565", 1);
        f = r1;
        h = new DecodeFormat[]{r0, r1};
        g = r0;
    }

    public static DecodeFormat valueOf(String str) {
        return (DecodeFormat) Enum.valueOf(DecodeFormat.class, str);
    }

    public static DecodeFormat[] values() {
        return (DecodeFormat[]) h.clone();
    }
}
