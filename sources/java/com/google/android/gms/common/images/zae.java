package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zai;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zae extends zag {
    private final WeakReference zac;

    public zae(ImageView imageView, int i) {
        super(Uri.EMPTY, i);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference(imageView);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = (ImageView) this.zac.get();
        ImageView imageView2 = (ImageView) ((zae) obj).zac.get();
        if (imageView2 != null && imageView != null && Objects.equal(imageView2, imageView)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zag
    public final void zaa(@Nullable Drawable drawable, boolean z, boolean z2, boolean z3) {
        boolean z4;
        ImageView imageView = (ImageView) this.zac.get();
        if (imageView != null) {
            if (!z2 && !z3 && (imageView instanceof zai)) {
                throw null;
            }
            if (z2 || z) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (z4) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 != null) {
                    if (drawable2 instanceof com.google.android.gms.internal.base.zah) {
                        drawable2 = ((com.google.android.gms.internal.base.zah) drawable2).o;
                    }
                } else {
                    drawable2 = null;
                }
                drawable = new com.google.android.gms.internal.base.zah(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (!(imageView instanceof zai)) {
                if (drawable != null && z4) {
                    com.google.android.gms.internal.base.zah zahVar = (com.google.android.gms.internal.base.zah) drawable;
                    zahVar.g = zahVar.h;
                    zahVar.j = 0;
                    zahVar.i = 250;
                    zahVar.f9598c = 1;
                    zahVar.invalidateSelf();
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public zae(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference(imageView);
    }
}
