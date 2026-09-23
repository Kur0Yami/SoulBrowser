package androidx.mediarouter.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaRouteSelector {

    /* renamed from: c, reason: collision with root package name */
    public static final MediaRouteSelector f1375c = new MediaRouteSelector(new Bundle(), null);

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f1376a;
    public List b;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f1377a;

        public final void a(ArrayList arrayList) {
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    b((String) obj);
                }
            }
        }

        public final void b(String str) {
            if (str != null) {
                if (this.f1377a == null) {
                    this.f1377a = new ArrayList();
                }
                if (!this.f1377a.contains(str)) {
                    this.f1377a.add(str);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("category must not be null");
        }

        public final MediaRouteSelector c() {
            if (this.f1377a == null) {
                return MediaRouteSelector.f1375c;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", this.f1377a);
            return new MediaRouteSelector(bundle, this.f1377a);
        }
    }

    public MediaRouteSelector(Bundle bundle, ArrayList arrayList) {
        this.f1376a = bundle;
        this.b = arrayList;
    }

    public static MediaRouteSelector b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return new MediaRouteSelector(bundle, null);
    }

    public final void a() {
        if (this.b == null) {
            ArrayList<String> stringArrayList = this.f1376a.getStringArrayList("controlCategories");
            this.b = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.b = Collections.EMPTY_LIST;
            }
        }
    }

    public final ArrayList c() {
        a();
        return new ArrayList(this.b);
    }

    public final boolean d() {
        a();
        return this.b.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MediaRouteSelector) {
            MediaRouteSelector mediaRouteSelector = (MediaRouteSelector) obj;
            a();
            mediaRouteSelector.a();
            return this.b.equals(mediaRouteSelector.b);
        }
        return false;
    }

    public final int hashCode() {
        a();
        return this.b.hashCode();
    }

    public final String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(c().toArray()) + " }";
    }
}
