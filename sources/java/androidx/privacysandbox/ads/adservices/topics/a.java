package androidx.privacysandbox.ads.adservices.topics;

import android.content.pm.ApkChecksum;
import android.graphics.ImageDecoder;
import android.media.AudioFocusRequest;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapFactory;
import com.bumptech.glide.util.GlideSuppliers;
import com.google.android.datatransport.TransportScheduleCallback;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements GlideSuppliers.GlideSupplier, TransportScheduleCallback {
    public static /* bridge */ /* synthetic */ android.adservices.topics.TopicsManager b(Object obj) {
        return (android.adservices.topics.TopicsManager) obj;
    }

    public static /* bridge */ /* synthetic */ ApkChecksum c(Object obj) {
        return (ApkChecksum) obj;
    }

    public static /* bridge */ /* synthetic */ ImageDecoder.Source f(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    public static /* bridge */ /* synthetic */ AudioFocusRequest g(Object obj) {
        return (AudioFocusRequest) obj;
    }

    @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
    public Object get() {
        return GlideBitmapFactory.GainmapDecoderWorkaroundStateCalculator.a();
    }
}
