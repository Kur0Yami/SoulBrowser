package com.google.mlkit.vision.text.latin;

import com.google.android.gms.common.internal.Objects;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class TextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f12835a = new AtomicReference();
    public final String b = "taser_tflite_gocrlatin_mbv2_scriptid_aksara_layout_gcn_mobile";

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    static {
        new TextRecognizerOptions();
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String a() {
        return "en";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String b() {
        if (true != g()) {
            return "play-services-mlkit-text-recognition";
        }
        return "text-recognition";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final Executor c() {
        return null;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int d() {
        return 1;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextRecognizerOptions)) {
            return false;
        }
        return Objects.equal(null, null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String f() {
        return "optional-module-text-latin";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean g() {
        return TextRecognizerOptionsUtils.a(this.f12835a, "com.google.mlkit.dynamite.text.latin");
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int h() {
        if (g()) {
            return 24317;
        }
        return 24306;
    }

    public final int hashCode() {
        return Objects.hashCode(null);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final String i() {
        if (true != g()) {
            return "com.google.android.gms.vision.ocr";
        }
        return "com.google.mlkit.dynamite.text.latin";
    }
}
