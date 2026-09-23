package androidx.mediarouter.media;

import androidx.mediarouter.media.MediaRouteProvider;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1423c;
    public final /* synthetic */ MediaRouteProvider.DynamicGroupRouteController f;
    public final /* synthetic */ MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener g;
    public final /* synthetic */ MediaRouteDescriptor h;
    public final /* synthetic */ Collection i;

    public /* synthetic */ d(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener onDynamicRoutesChangedListener, MediaRouteDescriptor mediaRouteDescriptor, ArrayList arrayList, int i) {
        this.f1423c = i;
        this.f = dynamicGroupRouteController;
        this.g = onDynamicRoutesChangedListener;
        this.h = mediaRouteDescriptor;
        this.i = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1423c) {
            case 0:
                this.g.a(this.f, this.h, (ArrayList) this.i);
                return;
            default:
                this.g.a(this.f, this.h, this.i);
                return;
        }
    }
}
