package androidx.mediarouter.media;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MediaRouterActiveScanThrottlingHelper {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f1388a = new Handler(Looper.getMainLooper());
    public final a b;

    /* renamed from: c, reason: collision with root package name */
    public long f1389c;
    public long d;
    public boolean e;

    public MediaRouterActiveScanThrottlingHelper(a aVar) {
        this.b = aVar;
    }
}
