package androidx.mediarouter.app;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;

/* loaded from: classes.dex */
public class MediaRouteDiscoveryFragment extends Fragment {

    /* renamed from: c, reason: collision with root package name */
    public MediaRouter f1313c;
    public MediaRouteSelector f;
    public MediaRouter.Callback g;

    /* renamed from: androidx.mediarouter.app.MediaRouteDiscoveryFragment$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends MediaRouter.Callback {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.mediarouter.media.MediaRouter$Callback, java.lang.Object] */
    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f = MediaRouteSelector.b(arguments.getBundle("selector"));
            }
            if (this.f == null) {
                this.f = MediaRouteSelector.f1375c;
            }
        }
        if (this.f1313c == null) {
            this.f1313c = MediaRouter.h(getContext());
        }
        ?? obj = new Object();
        this.g = obj;
        this.f1313c.a(this.f, obj, 0);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        MediaRouter.Callback callback = this.g;
        if (callback != null) {
            this.f1313c.p(callback);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        MediaRouter.Callback callback = this.g;
        if (callback != null) {
            this.f1313c.a(this.f, callback, 4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        MediaRouter.Callback callback = this.g;
        if (callback != null) {
            this.f1313c.a(this.f, callback, 0);
        }
        super.onStop();
    }
}
