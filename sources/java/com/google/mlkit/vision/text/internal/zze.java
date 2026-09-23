package com.google.mlkit.vision.text.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;

/* loaded from: classes3.dex */
final class zze implements zzm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12825a;
    public final com.google.android.gms.internal.mlkit_vision_text_common.zzp b = new com.google.android.gms.internal.mlkit_vision_text_common.zzp(null);

    /* renamed from: c, reason: collision with root package name */
    public boolean f12826c;
    public com.google.android.gms.internal.mlkit_vision_text_common.zzh d;

    public zze(Context context) {
        this.f12825a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0372, code lost:
    
        if (com.google.android.gms.internal.mlkit_vision_text_common.zzy.b(r0) == false) goto L81;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01ae  */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    /* JADX WARN: Type inference failed for: r2v32, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    @Override // com.google.mlkit.vision.text.internal.zzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.mlkit.vision.text.Text a(com.google.mlkit.vision.common.InputImage r32) {
        /*
            Method dump skipped, instructions count: 949
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.text.internal.zze.a(com.google.mlkit.vision.common.InputImage):com.google.mlkit.vision.text.Text");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzk] */
    @Override // com.google.mlkit.vision.text.internal.zzm
    public final void zzb() {
        ?? zzaVar;
        Context context = this.f12825a;
        if (this.d == null) {
            try {
                IBinder b = DynamiteModule.c(context, DynamiteModule.b, "com.google.android.gms.vision.dynamite").b("com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator");
                int i = com.google.android.gms.internal.mlkit_vision_text_common.zzj.f11278c;
                if (b == null) {
                    zzaVar = 0;
                } else {
                    IInterface queryLocalInterface = b.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    if (queryLocalInterface instanceof com.google.android.gms.internal.mlkit_vision_text_common.zzk) {
                        zzaVar = (com.google.android.gms.internal.mlkit_vision_text_common.zzk) queryLocalInterface;
                    } else {
                        zzaVar = new com.google.android.gms.internal.mlkit_vision_text_common.zza(b, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    }
                }
                com.google.android.gms.internal.mlkit_vision_text_common.zzh Y2 = zzaVar.Y2(new ObjectWrapper(context), this.b);
                this.d = Y2;
                if (Y2 == null && !this.f12826c) {
                    Log.d("LegacyTextDelegate", "Request OCR optional module download.");
                    OptionalModuleUtils.a(context, "ocr");
                    this.f12826c = true;
                }
            } catch (RemoteException e) {
                throw new MlKitException(e, "Failed to create legacy text recognizer.");
            } catch (DynamiteModule.LoadingException e2) {
                throw new MlKitException(e2, "Failed to load deprecated vision dynamite module.");
            }
        }
    }

    @Override // com.google.mlkit.vision.text.internal.zzm
    public final void zzc() {
        com.google.android.gms.internal.mlkit_vision_text_common.zzh zzhVar = this.d;
        if (zzhVar != null) {
            try {
                zzhVar.r2(2, zzhVar.I1());
            } catch (RemoteException e) {
                Log.e("LegacyTextDelegate", "Failed to release legacy text recognizer.", e);
            }
            this.d = null;
        }
    }
}
