package com.google.mlkit.vision.text.chinese;

import com.google.android.gms.common.internal.Objects;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ChineseTextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f12821a = new AtomicReference();

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String a() {
        return "zh";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String b() {
        if (true != g()) {
            return "play-services-mlkit-text-recognition-chinese";
        }
        return "text-recognition-chinese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final Executor c() {
        return null;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int d() {
        return 2;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String e() {
        return "taser_tflite_gocrchinese_and_latin_mbv2_aksara_layout_gcn_mobile";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChineseTextRecognizerOptions)) {
            return false;
        }
        return Objects.equal(null, null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String f() {
        return "optional-module-text-chinese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean g() {
        return TextRecognizerOptionsUtils.a(this.f12821a, "com.google.mlkit.dynamite.text.chinese");
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int h() {
        if (g()) {
            return 24316;
        }
        return 24330;
    }

    public final int hashCode() {
        return Objects.hashCode(null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String i() {
        if (true != g()) {
            return "com.google.android.gms.mlkit_ocr_chinese";
        }
        return "com.google.mlkit.dynamite.text.chinese";
    }
}
