package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class VolumeProviderCompat {

    /* renamed from: a, reason: collision with root package name */
    public final int f1272a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1273c;
    public int d;
    public Callback e;
    public VolumeProvider f;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static void a(VolumeProvider volumeProvider, int i) {
            volumeProvider.setCurrentVolume(i);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i, int i2, int i3, String str) {
        this.f1272a = i;
        this.b = i2;
        this.d = i3;
        this.f1273c = str;
    }

    public final VolumeProvider a() {
        VolumeProviderCompat volumeProviderCompat;
        if (this.f == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                volumeProviderCompat = this;
                volumeProviderCompat.f = new VolumeProvider(this.f1272a, this.b, this.d, this.f1273c) { // from class: androidx.media.VolumeProviderCompat.1
                    @Override // android.media.VolumeProvider
                    public final void onAdjustVolume(int i) {
                        VolumeProviderCompat.this.b(i);
                    }

                    @Override // android.media.VolumeProvider
                    public final void onSetVolumeTo(int i) {
                        VolumeProviderCompat.this.c(i);
                    }
                };
            } else {
                volumeProviderCompat = this;
                volumeProviderCompat.f = new VolumeProvider(volumeProviderCompat.f1272a, volumeProviderCompat.b, volumeProviderCompat.d) { // from class: androidx.media.VolumeProviderCompat.2
                    @Override // android.media.VolumeProvider
                    public final void onAdjustVolume(int i) {
                        VolumeProviderCompat.this.b(i);
                    }

                    @Override // android.media.VolumeProvider
                    public final void onSetVolumeTo(int i) {
                        VolumeProviderCompat.this.c(i);
                    }
                };
            }
        } else {
            volumeProviderCompat = this;
        }
        return volumeProviderCompat.f;
    }

    public void b(int i) {
    }

    public void c(int i) {
    }

    public final void d(int i) {
        this.d = i;
        Api21Impl.a(a(), i);
        Callback callback = this.e;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }
}
