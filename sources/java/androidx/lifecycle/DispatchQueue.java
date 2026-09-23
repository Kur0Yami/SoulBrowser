package androidx.lifecycle;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/DispatchQueue;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DispatchQueue {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1196a;

    public final void a() {
        if (this.f1196a) {
            return;
        }
        try {
            this.f1196a = true;
            throw null;
        } catch (Throwable th) {
            this.f1196a = false;
            throw th;
        }
    }
}
