package com.google.android.gms.cast.framework.media;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzi extends zzc {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImagePicker f3577c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzi(ImagePicker imagePicker) {
        super("com.google.android.gms.cast.framework.media.IImagePicker");
        this.f3577c = imagePicker;
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final IObjectWrapper zzf() {
        return new ObjectWrapper(this.f3577c);
    }
}
