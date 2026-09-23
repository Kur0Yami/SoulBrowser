package androidx.mediarouter.media;

import androidx.mediarouter.media.MediaRoute2Provider;
import androidx.mediarouter.media.MediaRouter;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1420c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f1420c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1420c) {
            case 0:
                ((GlobalMediaRouter) this.f).n();
                return;
            case 1:
                ((MediaRoute2Provider.GroupRouteController) this.f).n = -1;
                return;
            default:
                ((MediaRouter.PrepareTransferNotifier) this.f).a();
                return;
        }
    }
}
