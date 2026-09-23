package androidx.fragment.app;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1154c;
    public final /* synthetic */ Object f;

    public /* synthetic */ e(int i, Object obj) {
        this.f1154c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1154c) {
            case 0:
                Fragment fragment = (Fragment) this.f;
                FragmentViewLifecycleOwner fragmentViewLifecycleOwner = fragment.mViewLifecycleOwner;
                fragmentViewLifecycleOwner.j.b(fragment.mSavedViewRegistryState);
                fragment.mSavedViewRegistryState = null;
                return;
            default:
                ArrayList transitioningViews = (ArrayList) this.f;
                Intrinsics.checkNotNullParameter(transitioningViews, "$transitioningViews");
                FragmentTransition.c(4, transitioningViews);
                return;
        }
    }
}
