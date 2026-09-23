package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
final class zzcy implements com.google.android.gms.cast.framework.media.internal.zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzda f9666a;

    public zzcy(zzda zzdaVar) {
        this.f9666a = zzdaVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void a(Bitmap bitmap) {
        if (bitmap != null) {
            zzda zzdaVar = this.f9666a;
            View view = zzdaVar.e;
            ImageView imageView = zzdaVar.b;
            if (view != null) {
                view.setVisibility(4);
            }
            imageView.setVisibility(0);
            imageView.setImageBitmap(bitmap);
            zzcz zzczVar = zzdaVar.g;
            if (zzczVar != null) {
                zzczVar.a();
            }
        }
    }
}
