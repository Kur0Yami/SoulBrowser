package androidx.mediarouter.media;

import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRouter;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1421c;
    public final /* synthetic */ GlobalMediaRouter.MediaSessionRecord.AnonymousClass1 f;
    public final /* synthetic */ int g;

    public /* synthetic */ b(GlobalMediaRouter.MediaSessionRecord.AnonymousClass1 anonymousClass1, int i, int i2) {
        this.f1421c = i2;
        this.f = anonymousClass1;
        this.g = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1421c) {
            case 0:
                MediaRouter.RouteInfo routeInfo = GlobalMediaRouter.this.d;
                if (routeInfo != null) {
                    routeInfo.k(this.g);
                    return;
                }
                return;
            default:
                MediaRouter.RouteInfo routeInfo2 = GlobalMediaRouter.this.d;
                if (routeInfo2 != null) {
                    routeInfo2.l(this.g);
                    return;
                }
                return;
        }
    }
}
