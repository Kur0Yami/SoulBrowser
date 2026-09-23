package com.mycompany.app.cast;

import android.content.Context;
import android.support.v4.media.a;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.OptionsProvider;
import com.google.android.gms.cast.framework.SessionProvider;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.zzd;
import com.google.android.gms.cast.framework.zzj;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.cast.zzhc;
import com.google.android.gms.internal.cast.zzhd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class CastOptionsProvider implements OptionsProvider {

    /* loaded from: classes3.dex */
    public static class ImagePickerImpl extends ImagePicker {
        @Override // com.google.android.gms.cast.framework.media.ImagePicker
        public final WebImage b(MediaMetadata mediaMetadata, ImageHints imageHints) {
            List list;
            if (mediaMetadata == null || !mediaMetadata.G() || (list = mediaMetadata.f3445c) == null || list.isEmpty()) {
                return null;
            }
            return (WebImage) list.get(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.OptionsProvider
    public List<SessionProvider> getAdditionalSessionProviders(Context context) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.os.IBinder] */
    @Override // com.google.android.gms.cast.framework.OptionsProvider
    public CastOptions getCastOptions(Context context) {
        zzd zzdVar;
        NotificationOptions.Builder builder = new NotificationOptions.Builder();
        List asList = Arrays.asList(MediaIntentReceiver.ACTION_SKIP_PREV, MediaIntentReceiver.ACTION_REWIND, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_FORWARD, MediaIntentReceiver.ACTION_SKIP_NEXT, MediaIntentReceiver.ACTION_STOP_CASTING);
        int[] iArr = {2, 5};
        if (asList != null) {
            int size = asList.size();
            if (2 <= size) {
                for (int i = 0; i < 2; i++) {
                    int i2 = iArr[i];
                    if (i2 < 0 || i2 >= size) {
                        Locale locale = Locale.ROOT;
                        StringBuilder sb = new StringBuilder("Index ");
                        sb.append(i2);
                        sb.append(" in compatActionIndices out of range: [0, ");
                        sb.append(size - 1);
                        sb.append("]");
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
                builder.b = new ArrayList(asList);
                builder.f3504c = Arrays.copyOf(iArr, 2);
                builder.f3503a = ExpandedControlsActivity.class.getName();
                NotificationOptions a2 = builder.a();
                CastMediaOptions.Builder builder2 = new CastMediaOptions.Builder();
                builder2.b = new ImagePicker();
                builder2.f3496c = a2;
                builder2.f3495a = ExpandedControlsActivity.class.getName();
                ImagePicker imagePicker = builder2.b;
                if (imagePicker == null) {
                    zzdVar = null;
                } else {
                    zzdVar = imagePicker.f3498a;
                }
                CastMediaOptions castMediaOptions = new CastMediaOptions("com.google.android.gms.cast.framework.media.MediaIntentReceiver", builder2.f3495a, zzdVar, builder2.f3496c, false, builder2.d);
                CastOptions.Builder builder3 = new CastOptions.Builder();
                builder3.f3468a = "6B292972";
                CastMediaOptions castMediaOptions2 = (CastMediaOptions) zzhc.b(castMediaOptions).a(CastOptions.y);
                zzj zzjVar = CastOptions.w;
                zzhd.a(zzjVar, "use Optional.orNull() instead of Optional.or(null)");
                zzl zzlVar = CastOptions.x;
                zzhd.a(zzlVar, "use Optional.orNull() instead of Optional.or(null)");
                return new CastOptions(builder3.f3468a, builder3.b, false, builder3.f3469c, builder3.d, castMediaOptions2, builder3.e, builder3.f, false, false, false, builder3.g, builder3.h, false, zzjVar, zzlVar, false, false);
            }
            Locale locale2 = Locale.ROOT;
            throw new IllegalArgumentException(a.f(size, "Invalid number of compat actions: 2 > ", "."));
        }
        throw new IllegalArgumentException("When setting actions to null, you must also set compatActionIndices to null.");
    }
}
