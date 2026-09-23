package com.google.mlkit.vision.codescanner.internal;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.mlkit_code_scanner.zzoz;
import com.google.mlkit.vision.barcode.common.Barcode;

/* loaded from: classes3.dex */
public class GmsBarcodeScanningDelegateActivity extends ComponentActivity {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String obj;
        super.onCreate(bundle);
        Intent action = new Intent().setPackage("com.google.android.gms").setAction("com.google.android.gms.mlkit.ACTION_SCAN_BARCODE");
        ApplicationInfo applicationInfo = getApplicationInfo();
        int i = applicationInfo.labelRes;
        if (i != 0) {
            obj = getString(i);
        } else {
            obj = getPackageManager().getApplicationLabel(applicationInfo).toString();
        }
        S(new Object(), new ActivityResultCallback() { // from class: com.google.mlkit.vision.codescanner.internal.zzf
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj2) {
                ActivityResult activityResult = (ActivityResult) obj2;
                Intent intent = activityResult.f;
                if (activityResult.f53c == -1 && intent != null && intent.hasExtra("extra_barcode_result")) {
                    zze.c(new Barcode(new zza((zzoz) SafeParcelableSerializer.deserializeFromBytes((byte[]) Preconditions.checkNotNull(intent.getByteArrayExtra("extra_barcode_result")), zzoz.CREATOR))), 0);
                } else {
                    int i2 = 13;
                    if (intent != null) {
                        i2 = intent.getIntExtra("extra_error_code", 13);
                    }
                    zze.c(null, i2);
                }
                GmsBarcodeScanningDelegateActivity.this.finish();
            }
        }).a(action.putExtra("extra_calling_app_name", obj).putExtra("extra_supported_formats", getIntent().getIntExtra("extra_supported_formats", 0)).putExtra("extra_allow_manual_input", getIntent().getBooleanExtra("extra_allow_manual_input", false)).putExtra("extra_enable_auto_zoom", getIntent().getBooleanExtra("extra_enable_auto_zoom", false)));
    }
}
