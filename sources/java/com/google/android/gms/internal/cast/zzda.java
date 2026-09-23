package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public final class zzda extends UIController {
    public final ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageHints f9667c;
    public final Bitmap d;
    public final View e;
    public final ImagePicker f;
    public final zzcz g;
    public final com.google.android.gms.cast.framework.media.internal.zzb h;

    public zzda(ImageView imageView, Context context, ImageHints imageHints, int i, View view, zzcz zzczVar) {
        Bitmap bitmap;
        this.b = imageView;
        this.f9667c = imageHints;
        this.g = zzczVar;
        ImagePicker imagePicker = null;
        if (i != 0) {
            bitmap = BitmapFactory.decodeResource(context.getResources(), i);
        } else {
            bitmap = null;
        }
        this.d = bitmap;
        this.e = view;
        CastContext h = CastContext.h(context);
        if (h != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            CastMediaOptions castMediaOptions = h.e.j;
            if (castMediaOptions != null) {
                imagePicker = castMediaOptions.F();
            }
        }
        this.f = imagePicker;
        this.h = new com.google.android.gms.cast.framework.media.internal.zzb(context.getApplicationContext());
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        this.h.e = new zzcy(this);
        g();
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = this.h;
        zzbVar.b();
        zzbVar.e = null;
        g();
        this.f3529a = null;
    }

    public final void f() {
        List list;
        WebImage b;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            MediaInfo f = remoteMediaClient.f();
            Uri uri = null;
            if (f != null) {
                MediaMetadata mediaMetadata = f.h;
                ImagePicker imagePicker = this.f;
                if (imagePicker != null && mediaMetadata != null && (b = imagePicker.b(mediaMetadata, this.f9667c)) != null && b.getUrl() != null) {
                    uri = b.getUrl();
                } else if (mediaMetadata != null && (list = mediaMetadata.f3445c) != null && list.size() > 0) {
                    uri = ((WebImage) list.get(0)).getUrl();
                }
            }
            if (uri == null) {
                g();
                return;
            } else {
                this.h.a(uri);
                return;
            }
        }
        g();
    }

    public final void g() {
        ImageView imageView = this.b;
        View view = this.e;
        if (view != null) {
            view.setVisibility(0);
            imageView.setVisibility(4);
        }
        Bitmap bitmap = this.d;
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
