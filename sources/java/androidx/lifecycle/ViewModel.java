package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class ViewModel {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1230a = new HashMap();
    public final LinkedHashSet b = new LinkedHashSet();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f1231c = false;

    public static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void b() {
    }
}
