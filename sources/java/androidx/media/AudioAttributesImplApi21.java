package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributes f1256a;
    public int b = -1;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Builder implements AudioAttributesImpl.Builder {

        /* renamed from: a, reason: collision with root package name */
        public final AudioAttributes.Builder f1257a = new AudioAttributes.Builder();

        @Override // androidx.media.AudioAttributesImpl.Builder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Builder a() {
            this.f1257a.setUsage(1);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi21(this.f1257a.build(), 0);
        }
    }

    @RestrictTo
    public AudioAttributesImplApi21() {
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i = this.b;
        if (i != -1) {
            return i;
        }
        return AudioAttributesCompat.b(this.f1256a.getFlags(), this.f1256a.getUsage());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f1256a.equals(((AudioAttributesImplApi21) obj).f1256a);
    }

    public final int hashCode() {
        return this.f1256a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f1256a;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.f1256a = audioAttributes;
    }
}
