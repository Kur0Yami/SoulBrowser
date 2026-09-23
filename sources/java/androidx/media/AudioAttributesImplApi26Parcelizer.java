package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        Parcelable parcelable = audioAttributesImplApi26.f1256a;
        if (versionedParcel.j(1)) {
            parcelable = versionedParcel.m();
        }
        audioAttributesImplApi26.f1256a = (AudioAttributes) parcelable;
        audioAttributesImplApi26.b = versionedParcel.l(audioAttributesImplApi26.b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.q(false, false);
        AudioAttributes audioAttributes = audioAttributesImplApi26.f1256a;
        versionedParcel.p(1);
        versionedParcel.w(audioAttributes);
        versionedParcel.v(audioAttributesImplApi26.b, 2);
    }
}
