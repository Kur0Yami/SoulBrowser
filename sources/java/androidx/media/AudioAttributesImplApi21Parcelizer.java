package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        Parcelable parcelable = audioAttributesImplApi21.f1256a;
        if (versionedParcel.j(1)) {
            parcelable = versionedParcel.m();
        }
        audioAttributesImplApi21.f1256a = (AudioAttributes) parcelable;
        audioAttributesImplApi21.b = versionedParcel.l(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.q(false, false);
        AudioAttributes audioAttributes = audioAttributesImplApi21.f1256a;
        versionedParcel.p(1);
        versionedParcel.w(audioAttributes);
        versionedParcel.v(audioAttributesImplApi21.b, 2);
    }
}
