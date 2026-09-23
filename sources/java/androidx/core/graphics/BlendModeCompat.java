package androidx.core.graphics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class BlendModeCompat {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ BlendModeCompat[] f678c = {new Enum("CLEAR", 0), new Enum("SRC", 1), new Enum("DST", 2), new Enum("SRC_OVER", 3), new Enum("DST_OVER", 4), new Enum("SRC_IN", 5), new Enum("DST_IN", 6), new Enum("SRC_OUT", 7), new Enum("DST_OUT", 8), new Enum("SRC_ATOP", 9), new Enum("DST_ATOP", 10), new Enum("XOR", 11), new Enum("PLUS", 12), new Enum("MODULATE", 13), new Enum("SCREEN", 14), new Enum("OVERLAY", 15), new Enum("DARKEN", 16), new Enum("LIGHTEN", 17), new Enum("COLOR_DODGE", 18), new Enum("COLOR_BURN", 19), new Enum("HARD_LIGHT", 20), new Enum("SOFT_LIGHT", 21), new Enum("DIFFERENCE", 22), new Enum("EXCLUSION", 23), new Enum("MULTIPLY", 24), new Enum("HUE", 25), new Enum("SATURATION", 26), new Enum("COLOR", 27), new Enum("LUMINOSITY", 28)};

    /* JADX INFO: Fake field, exist only in values array */
    BlendModeCompat EF5;

    public static BlendModeCompat valueOf(String str) {
        return (BlendModeCompat) Enum.valueOf(BlendModeCompat.class, str);
    }

    public static BlendModeCompat[] values() {
        return (BlendModeCompat[]) f678c.clone();
    }
}
