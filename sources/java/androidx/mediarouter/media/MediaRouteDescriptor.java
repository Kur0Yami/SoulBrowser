package androidx.mediarouter.media;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class MediaRouteDescriptor {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f1358a;

    public MediaRouteDescriptor(Bundle bundle) {
        this.f1358a = bundle;
    }

    public final HashSet a() {
        Bundle bundle = this.f1358a;
        if (!bundle.containsKey("allowedPackages")) {
            return new HashSet();
        }
        return new HashSet(bundle.getStringArrayList("allowedPackages"));
    }

    public final ArrayList b() {
        Bundle bundle = this.f1358a;
        if (!bundle.containsKey("controlFilters")) {
            return new ArrayList();
        }
        return new ArrayList(bundle.getParcelableArrayList("controlFilters"));
    }

    public final int c() {
        return this.f1358a.getInt("deviceType");
    }

    public final ArrayList d() {
        Bundle bundle = this.f1358a;
        if (!bundle.containsKey("groupMemberIds")) {
            return new ArrayList();
        }
        return new ArrayList(bundle.getStringArrayList("groupMemberIds"));
    }

    public final Uri e() {
        String string = this.f1358a.getString("iconUri");
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public final String f() {
        return this.f1358a.getString("id");
    }

    public final String g() {
        return this.f1358a.getString("name");
    }

    public final int h() {
        return this.f1358a.getInt("volume");
    }

    public final boolean i() {
        if (!TextUtils.isEmpty(f()) && !TextUtils.isEmpty(g()) && !b().contains(null)) {
            return true;
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouteDescriptor{ id=");
        sb.append(f());
        sb.append(", groupMemberIds=");
        sb.append(d());
        sb.append(", name=");
        sb.append(g());
        sb.append(", description=");
        Bundle bundle = this.f1358a;
        sb.append(bundle.getString("status"));
        sb.append(", iconUri=");
        sb.append(e());
        sb.append(", isEnabled=");
        sb.append(bundle.getBoolean("enabled", true));
        sb.append(", isSystemRoute=");
        sb.append(bundle.getBoolean("isSystemRoute", false));
        sb.append(", connectionState=");
        sb.append(bundle.getInt("connectionState", 0));
        sb.append(", controlFilters=");
        sb.append(Arrays.toString(b().toArray()));
        sb.append(", playbackType=");
        sb.append(bundle.getInt("playbackType", 1));
        sb.append(", playbackStream=");
        sb.append(bundle.getInt("playbackStream", -1));
        sb.append(", deviceType=");
        sb.append(c());
        sb.append(", volume=");
        sb.append(h());
        sb.append(", volumeMax=");
        sb.append(bundle.getInt("volumeMax"));
        sb.append(", volumeHandling=");
        sb.append(bundle.getInt("volumeHandling", 0));
        sb.append(", presentationDisplayId=");
        sb.append(bundle.getInt("presentationDisplayId", -1));
        sb.append(", extras=");
        sb.append(bundle.getBundle("extras"));
        sb.append(", isValid=");
        sb.append(i());
        sb.append(", minClientVersion=");
        sb.append(bundle.getInt("minClientVersion", 1));
        sb.append(", maxClientVersion=");
        sb.append(bundle.getInt("maxClientVersion", Integer.MAX_VALUE));
        sb.append(", isVisibilityPublic=");
        sb.append(bundle.getBoolean("isVisibilityPublic", true));
        sb.append(", allowedPackages=");
        sb.append(Arrays.toString(a().toArray()));
        sb.append(" }");
        return sb.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f1359a;
        public final ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f1360c;
        public final HashSet d;

        public Builder(String str, String str2) {
            this.b = new ArrayList();
            this.f1360c = new ArrayList();
            this.d = new HashSet();
            Bundle bundle = new Bundle();
            this.f1359a = bundle;
            if (str != null) {
                bundle.putString("id", str);
                if (str2 != null) {
                    bundle.putString("name", str2);
                    return;
                }
                throw new NullPointerException("name must not be null");
            }
            throw new NullPointerException("id must not be null");
        }

        public final void a(ArrayList arrayList) {
            if (arrayList != null) {
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        IntentFilter intentFilter = (IntentFilter) obj;
                        if (intentFilter != null) {
                            ArrayList arrayList2 = this.f1360c;
                            if (!arrayList2.contains(intentFilter)) {
                                arrayList2.add(intentFilter);
                            }
                        }
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("filters must not be null");
        }

        public final void b(ArrayList arrayList) {
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str = (String) obj;
                    if (!TextUtils.isEmpty(str)) {
                        ArrayList arrayList2 = this.b;
                        if (!arrayList2.contains(str)) {
                            arrayList2.add(str);
                        }
                    } else {
                        throw new IllegalArgumentException("groupMemberId must not be empty");
                    }
                }
            }
        }

        public final MediaRouteDescriptor c() {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f1360c);
            Bundle bundle = this.f1359a;
            bundle.putParcelableArrayList("controlFilters", arrayList);
            bundle.putStringArrayList("groupMemberIds", new ArrayList<>(this.b));
            bundle.putStringArrayList("allowedPackages", new ArrayList<>(this.d));
            return new MediaRouteDescriptor(bundle);
        }

        public Builder(MediaRouteDescriptor mediaRouteDescriptor) {
            this.b = new ArrayList();
            this.f1360c = new ArrayList();
            this.d = new HashSet();
            if (mediaRouteDescriptor != null) {
                this.f1359a = new Bundle(mediaRouteDescriptor.f1358a);
                this.b = mediaRouteDescriptor.d();
                this.f1360c = mediaRouteDescriptor.b();
                this.d = mediaRouteDescriptor.a();
                return;
            }
            throw new IllegalArgumentException("descriptor must not be null");
        }
    }
}
