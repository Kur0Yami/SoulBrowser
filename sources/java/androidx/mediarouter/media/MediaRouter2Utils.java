package androidx.mediarouter.media;

import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RequiresApi
/* loaded from: classes.dex */
class MediaRouter2Utils {

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        public static Set a(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getDeduplicationIds();
        }

        public static int b(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getType();
        }
    }

    public static ArrayList a(List list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) it.next();
            if (mediaRoute2Info != null) {
                arrayList.add(mediaRoute2Info.getId());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.mediarouter.media.MediaRouteDescriptor b(android.media.MediaRoute2Info r13) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.MediaRouter2Utils.b(android.media.MediaRoute2Info):androidx.mediarouter.media.MediaRouteDescriptor");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0021. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.mediarouter.media.MediaRouteSelector$Builder, java.lang.Object] */
    public static MediaRouteDiscoveryRequest c(RouteDiscoveryPreference routeDiscoveryPreference) {
        ArrayList arrayList = new ArrayList();
        for (String str : routeDiscoveryPreference.getPreferredFeatures()) {
            str.getClass();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1282314761:
                    if (str.equals("android.media.route.feature.REMOTE_AUDIO_PLAYBACK")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1190404366:
                    if (str.equals("android.media.route.feature.REMOTE_VIDEO_PLAYBACK")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 94496206:
                    if (str.equals("android.media.route.feature.REMOTE_PLAYBACK")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1328964233:
                    if (str.equals("android.media.route.feature.LIVE_AUDIO")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1348000558:
                    if (str.equals("android.media.route.feature.LIVE_VIDEO")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    str = "android.media.intent.category.REMOTE_AUDIO_PLAYBACK";
                    break;
                case 1:
                    str = "android.media.intent.category.REMOTE_VIDEO_PLAYBACK";
                    break;
                case 2:
                    str = "android.media.intent.category.REMOTE_PLAYBACK";
                    break;
                case 3:
                    str = "android.media.intent.category.LIVE_AUDIO";
                    break;
                case 4:
                    str = "android.media.intent.category.LIVE_VIDEO";
                    break;
            }
            arrayList.add(str);
        }
        ?? obj = new Object();
        obj.a(arrayList);
        return new MediaRouteDiscoveryRequest(obj.c(), routeDiscoveryPreference.shouldPerformActiveScan());
    }
}
