package androidx.emoji2.text.flatbuffer;

/* loaded from: classes.dex */
public abstract class Utf8 {

    /* renamed from: a, reason: collision with root package name */
    public static Utf8Safe f1041a;

    /* loaded from: classes.dex */
    public static class DecodeUtil {
        public static boolean a(byte b) {
            return b > -65;
        }
    }

    /* loaded from: classes.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
    }
}
