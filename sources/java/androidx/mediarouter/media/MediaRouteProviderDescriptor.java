package androidx.mediarouter.media;

import android.os.Bundle;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaRouteProviderDescriptor {

    /* renamed from: a, reason: collision with root package name */
    public final List f1372a;
    public final boolean b;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1373a = new ArrayList();
        public boolean b = false;

        public final void a(MediaRouteDescriptor mediaRouteDescriptor) {
            if (mediaRouteDescriptor != null) {
                ArrayList arrayList = this.f1373a;
                if (!arrayList.contains(mediaRouteDescriptor)) {
                    arrayList.add(mediaRouteDescriptor);
                    return;
                }
                throw new IllegalArgumentException("route descriptor already added");
            }
            throw new IllegalArgumentException("route must not be null");
        }
    }

    public MediaRouteProviderDescriptor(ArrayList arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            this.f1372a = Collections.EMPTY_LIST;
        } else {
            this.f1372a = DesugarCollections.unmodifiableList(new ArrayList(arrayList));
        }
        this.b = z;
    }

    public static MediaRouteProviderDescriptor a(Bundle bundle) {
        MediaRouteDescriptor mediaRouteDescriptor;
        if (bundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        if (parcelableArrayList != null) {
            for (int i = 0; i < parcelableArrayList.size(); i++) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i);
                if (bundle2 != null) {
                    mediaRouteDescriptor = new MediaRouteDescriptor(bundle2);
                } else {
                    mediaRouteDescriptor = null;
                }
                arrayList.add(mediaRouteDescriptor);
            }
        }
        return new MediaRouteProviderDescriptor(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouteProviderDescriptor{ routes=");
        List list = this.f1372a;
        sb.append(Arrays.toString(list.toArray()));
        sb.append(", isValid=");
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                MediaRouteDescriptor mediaRouteDescriptor = (MediaRouteDescriptor) list.get(i);
                if (mediaRouteDescriptor == null || !mediaRouteDescriptor.i()) {
                    break;
                }
                i++;
            } else {
                z = true;
                break;
            }
        }
        sb.append(z);
        sb.append(" }");
        return sb.toString();
    }
}
