package com.google.mlkit.vision.text.japanese;

import com.google.android.gms.common.internal.Objects;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class JapaneseTextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f12833a = new AtomicReference();

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String a() {
        return "ja";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String b() {
        if (true != g()) {
            return "play-services-mlkit-text-recognition-japanese";
        }
        return "text-recognition-japanese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final Executor c() {
        return null;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int d() {
        return 4;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String e() {
        return "taser_tflite_gocrjapanese_and_latin_mbv2_aksara_layout_gcn_mobile";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JapaneseTextRecognizerOptions)) {
            return false;
        }
        return Objects.equal(null, null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String f() {
        return "optional-module-text-japanese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean g() {
        return TextRecognizerOptionsUtils.a(this.f12833a, "com.google.mlkit.dynamite.text.japanese");
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int h() {
        if (g()) {
            return 24318;
        }
        return 24332;
    }

    public final int hashCode() {
        return Objects.hashCode(null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String i() {
        if (true != g()) {
            return "com.google.android.gms.mlkit_ocr_japanese";
        }
        return "com.google.mlkit.dynamite.text.japanese";
    }
}
