package com.google.android.gms.internal.cast;

import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzde extends UIController {
    public final TextView b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9668c;

    public zzde(TextView textView, List list) {
        ArrayList arrayList = new ArrayList();
        this.f9668c = arrayList;
        this.b = textView;
        arrayList.addAll(list);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        MediaInfo mediaInfo;
        MediaMetadata mediaMetadata;
        TextView textView;
        String str;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null && remoteMediaClient.j() && (mediaInfo = ((MediaStatus) Preconditions.checkNotNull(remoteMediaClient.g())).f3455c) != null && (mediaMetadata = mediaInfo.h) != null) {
            ArrayList arrayList = this.f9668c;
            int size = arrayList.size();
            int i = 0;
            do {
                textView = this.b;
                if (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    str = (String) obj;
                } else {
                    textView.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    return;
                }
            } while (!mediaMetadata.f.containsKey(str));
            textView.setText(mediaMetadata.F(str));
        }
    }
}
