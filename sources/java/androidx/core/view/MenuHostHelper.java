package androidx.core.view;

import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class MenuHostHelper {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f778a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f779c = new HashMap();

    /* loaded from: classes.dex */
    public static class LifecycleContainer {
    }

    public MenuHostHelper(Runnable runnable) {
        this.f778a = runnable;
    }

    public final void a(MenuProvider menuProvider) {
        this.b.remove(menuProvider);
        if (((LifecycleContainer) this.f779c.remove(menuProvider)) == null) {
            this.f778a.run();
            return;
        }
        throw null;
    }
}
