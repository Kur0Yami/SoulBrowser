package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.moduleinstall.ModuleInstall;
import com.google.android.gms.common.moduleinstall.ModuleInstallRequest;
import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_common.zzah;
import com.google.android.gms.internal.mlkit_common.zzai;
import com.google.android.gms.internal.mlkit_common.zzak;
import com.google.android.gms.internal.mlkit_common.zzat;

@KeepForSdk
/* loaded from: classes3.dex */
public class OptionalModuleUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Feature[] f12777a = new Feature[0];
    public static final Feature b;

    /* renamed from: c, reason: collision with root package name */
    public static final Feature f12778c;
    public static final Feature d;
    public static final Feature e;
    public static final Feature f;
    public static final Feature g;
    public static final Feature h;
    public static final Feature i;
    public static final zzai j;

    static {
        Feature feature = new Feature("vision.barcode", 1L);
        b = feature;
        Feature feature2 = new Feature("vision.custom.ica", 1L);
        Feature feature3 = new Feature("vision.face", 1L);
        Feature feature4 = new Feature("vision.ica", 1L);
        Feature feature5 = new Feature("vision.ocr", 1L);
        f12778c = feature5;
        d = new Feature("mlkit.ocr.chinese", 1L);
        e = new Feature("mlkit.ocr.common", 1L);
        f = new Feature("mlkit.ocr.devanagari", 1L);
        g = new Feature("mlkit.ocr.japanese", 1L);
        h = new Feature("mlkit.ocr.korean", 1L);
        Feature feature6 = new Feature("mlkit.langid", 1L);
        Feature feature7 = new Feature("mlkit.nlclassifier", 1L);
        Feature feature8 = new Feature("tflite_dynamite", 1L);
        Feature feature9 = new Feature("mlkit.barcode.ui", 1L);
        i = feature9;
        Feature feature10 = new Feature("mlkit.smartreply", 1L);
        new Feature("mlkit.image.caption", 1L);
        new Feature("mlkit.docscan.detect", 1L);
        new Feature("mlkit.docscan.crop", 1L);
        new Feature("mlkit.docscan.enhance", 1L);
        new Feature("mlkit.docscan.ui", 1L);
        new Feature("mlkit.docscan.stain", 1L);
        new Feature("mlkit.docscan.shadow", 1L);
        new Feature("mlkit.quality.aesthetic", 1L);
        new Feature("mlkit.quality.technical", 1L);
        new Feature("mlkit.segmentation.subject", 1L);
        zzah zzahVar = new zzah();
        zzahVar.a("barcode", feature);
        zzahVar.a("custom_ica", feature2);
        zzahVar.a("face", feature3);
        zzahVar.a("ica", feature4);
        zzahVar.a("ocr", feature5);
        zzahVar.a("langid", feature6);
        zzahVar.a("nlclassifier", feature7);
        zzahVar.a("tflite_dynamite", feature8);
        zzahVar.a("barcode_ui", feature9);
        zzahVar.a("smart_reply", feature10);
        j = zzahVar.b();
        zzah zzahVar2 = new zzah();
        zzahVar2.a("com.google.android.gms.vision.barcode", feature);
        zzahVar2.a("com.google.android.gms.vision.custom.ica", feature2);
        zzahVar2.a("com.google.android.gms.vision.face", feature3);
        zzahVar2.a("com.google.android.gms.vision.ica", feature4);
        zzahVar2.a("com.google.android.gms.vision.ocr", feature5);
        zzahVar2.a("com.google.android.gms.mlkit.langid", feature6);
        zzahVar2.a("com.google.android.gms.mlkit.nlclassifier", feature7);
        zzahVar2.a("com.google.android.gms.tflite_dynamite", feature8);
        zzahVar2.a("com.google.android.gms.mlkit_smartreply", feature10);
        zzahVar2.b();
    }

    public static void a(Context context, String str) {
        zzat zzatVar = zzaf.f;
        Object[] objArr = {str};
        zzak.a(1, objArr);
        zzaf p = zzaf.p(1, objArr);
        if (GoogleApiAvailabilityLight.getInstance().getApkVersion(context) >= 221500000) {
            Feature[] featureArr = new Feature[p.size()];
            for (int i2 = 0; i2 < p.size(); i2++) {
                featureArr[i2] = (Feature) Preconditions.checkNotNull((Feature) j.get(p.get(i2)));
            }
            b(context, featureArr);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
        intent.setAction("com.google.android.gms.vision.DEPENDENCY");
        intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", TextUtils.join(",", p));
        intent.putExtra("requester_app_package", context.getApplicationInfo().packageName);
        context.sendBroadcast(intent);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.tasks.OnFailureListener, java.lang.Object] */
    public static void b(Context context, final Feature[] featureArr) {
        ModuleInstall.getClient(context).installModules(ModuleInstallRequest.newBuilder().addApi(new OptionalModuleApi() { // from class: com.google.mlkit.common.sdkinternal.zzo
            @Override // com.google.android.gms.common.api.OptionalModuleApi
            public final Feature[] getOptionalFeatures() {
                Feature[] featureArr2 = OptionalModuleUtils.f12777a;
                return featureArr;
            }
        }).build()).e(new Object());
    }
}
