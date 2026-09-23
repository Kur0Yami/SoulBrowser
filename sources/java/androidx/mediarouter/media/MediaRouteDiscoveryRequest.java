package androidx.mediarouter.media;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class MediaRouteDiscoveryRequest {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f1361a;
    public MediaRouteSelector b;

    public MediaRouteDiscoveryRequest(MediaRouteSelector mediaRouteSelector, boolean z) {
        if (mediaRouteSelector != null) {
            Bundle bundle = new Bundle();
            this.f1361a = bundle;
            this.b = mediaRouteSelector;
            bundle.putBundle("selector", mediaRouteSelector.f1376a);
            bundle.putBoolean("activeScan", z);
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void a() {
        if (this.b == null) {
            MediaRouteSelector b = MediaRouteSelector.b(this.f1361a.getBundle("selector"));
            this.b = b;
            if (b == null) {
                this.b = MediaRouteSelector.f1375c;
            }
        }
    }

    public final boolean b() {
        return this.f1361a.getBoolean("activeScan");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MediaRouteDiscoveryRequest) {
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = (MediaRouteDiscoveryRequest) obj;
            a();
            MediaRouteSelector mediaRouteSelector = this.b;
            mediaRouteDiscoveryRequest.a();
            if (mediaRouteSelector.equals(mediaRouteDiscoveryRequest.b) && b() == mediaRouteDiscoveryRequest.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        a();
        return this.b.hashCode() ^ (b() ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DiscoveryRequest{ selector=");
        a();
        sb.append(this.b);
        sb.append(", activeScan=");
        sb.append(b());
        sb.append(", isValid=");
        a();
        this.b.a();
        sb.append(!r1.b.contains(null));
        sb.append(" }");
        return sb.toString();
    }
}
