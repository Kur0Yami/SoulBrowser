package com.google.mlkit.vision.text.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_common.zzlx;
import com.google.android.gms.internal.mlkit_vision_text_common.zzot;
import com.google.android.gms.internal.mlkit_vision_text_common.zzov;
import com.google.android.gms.internal.mlkit_vision_text_common.zzrz;
import com.google.android.gms.internal.mlkit_vision_text_common.zzsd;
import com.google.android.gms.internal.mlkit_vision_text_common.zztw;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuf;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizer;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.zzn;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzn extends MobileVisionBase implements TextRecognizer {
    public final TextRecognizerOptionsInterface j;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzsa, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzrx, java.lang.Object] */
    public zzn(TextRecognizerTaskWithResource textRecognizerTaskWithResource, Executor executor, zzuc zzucVar, TextRecognizerOptionsInterface textRecognizerOptionsInterface) {
        super(textRecognizerTaskWithResource, executor);
        zzot zzotVar;
        this.j = textRecognizerOptionsInterface;
        ?? obj = new Object();
        if (textRecognizerOptionsInterface.g()) {
            zzotVar = zzot.TYPE_THICK;
        } else {
            zzotVar = zzot.TYPE_THIN;
        }
        obj.f11393c = zzotVar;
        ?? obj2 = new Object();
        ?? obj3 = new Object();
        obj3.f11404a = LoggingUtils.a(textRecognizerOptionsInterface.d());
        obj2.f11401c = new zzsd(obj3);
        obj.d = new zzrz(obj2);
        MLTaskExecutor.c().execute(new zztw(zzucVar, new zzuf(obj, 1), zzov.ON_DEVICE_TEXT_CREATE, zzucVar.c()));
    }

    public final Task e(final InputImage inputImage) {
        synchronized (this) {
            Preconditions.checkNotNull(inputImage, "InputImage can not be null");
            if (this.f12811c.get()) {
                return Tasks.d(new MlKitException("This detector is already closed!", 14));
            }
            if (inputImage.b >= 32 && inputImage.f12809c >= 32) {
                return this.f.a(this.h, new Callable() { // from class: com.google.mlkit.vision.common.internal.zza
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzn zznVar = zzn.this;
                        InputImage inputImage2 = inputImage;
                        zzlx d = zzlx.d();
                        d.a();
                        try {
                            Text d2 = zznVar.f.d(inputImage2);
                            d.close();
                            return d2;
                        } catch (Throwable th) {
                            try {
                                d.close();
                            } catch (Throwable th2) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    }
                }, this.g.f11603a);
            }
            return Tasks.d(new MlKitException("InputImage width and height should be at least 32!", 3));
        }
    }

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        return TextOptionalModuleUtils.a(this.j);
    }
}
