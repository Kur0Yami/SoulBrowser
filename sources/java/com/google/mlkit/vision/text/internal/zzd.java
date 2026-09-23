package com.google.mlkit.vision.text.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.a;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_vision_text_common.zzot;
import com.google.android.gms.internal.mlkit_vision_text_common.zzou;
import com.google.android.gms.internal.mlkit_vision_text_common.zzov;
import com.google.android.gms.internal.mlkit_vision_text_common.zzrw;
import com.google.android.gms.internal.mlkit_vision_text_common.zzub;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuf;
import com.google.android.gms.internal.mlkit_vision_text_common.zzut;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuv;
import com.google.android.gms.internal.mlkit_vision_text_common.zzux;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuy;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvh;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;

/* loaded from: classes3.dex */
final class zzd implements zzm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12823a;
    public final TextRecognizerOptionsInterface b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12824c;
    public boolean d;
    public final zzuc e;
    public zzuv f;

    public zzd(Context context, TextRecognizerOptionsInterface textRecognizerOptionsInterface, zzuc zzucVar) {
        this.f12823a = context;
        this.b = textRecognizerOptionsInterface;
        this.e = zzucVar;
    }

    public static zzvh b(TextRecognizerOptionsInterface textRecognizerOptionsInterface, String str) {
        boolean z;
        int i = 1;
        if ((textRecognizerOptionsInterface instanceof zzc) && ((zzc) textRecognizerOptionsInterface).zza()) {
            z = true;
        } else {
            z = false;
        }
        String e = textRecognizerOptionsInterface.e();
        String f = textRecognizerOptionsInterface.f();
        switch (textRecognizerOptionsInterface.d()) {
            case 1:
                i = 2;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case 6:
                i = 7;
                break;
            case 7:
                i = 8;
                break;
            case 8:
                i = 9;
                break;
        }
        return new zzvh(e, f, str, true, i - 1, textRecognizerOptionsInterface.a(), z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6 A[Catch: RemoteException -> 0x00b8, TryCatch #1 {RemoteException -> 0x00b8, blocks: (B:19:0x008b, B:22:0x00ad, B:25:0x00a6), top: B:18:0x008b }] */
    @Override // com.google.mlkit.vision.text.internal.zzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.mlkit.vision.text.Text a(com.google.mlkit.vision.common.InputImage r11) {
        /*
            r10 = this;
            com.google.android.gms.internal.mlkit_vision_text_common.zzuv r0 = r10.f
            if (r0 != 0) goto L7
            r10.zzb()
        L7:
            com.google.android.gms.internal.mlkit_vision_text_common.zzuv r0 = r10.f
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.internal.mlkit_vision_text_common.zzuv r0 = (com.google.android.gms.internal.mlkit_vision_text_common.zzuv) r0
            boolean r1 = r10.f12824c
            r2 = 1
            if (r1 != 0) goto L32
            android.os.Parcel r1 = r0.I1()     // Catch: android.os.RemoteException -> L1e
            r0.r2(r2, r1)     // Catch: android.os.RemoteException -> L1e
            r10.f12824c = r2     // Catch: android.os.RemoteException -> L1e
            goto L32
        L1e:
            r0 = move-exception
            r11 = r0
            com.google.mlkit.vision.text.TextRecognizerOptionsInterface r0 = r10.b
            java.lang.String r0 = r0.b()
            com.google.mlkit.common.MlKitException r1 = new com.google.mlkit.common.MlKitException
            java.lang.String r2 = "Failed to init text recognizer "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r11, r0)
            throw r1
        L32:
            com.google.android.gms.internal.mlkit_vision_text_common.zzuq r3 = new com.google.android.gms.internal.mlkit_vision_text_common.zzuq
            int r4 = r11.d
            int r5 = r11.b
            int r6 = r11.f12809c
            r7 = 0
            long r8 = android.os.SystemClock.elapsedRealtime()
            r3.<init>(r4, r5, r6, r7, r8)
            com.google.mlkit.vision.common.internal.ImageUtils r1 = com.google.mlkit.vision.common.internal.ImageUtils.f12810a
            r1.getClass()
            int r1 = r11.d
            r4 = -1
            r5 = 0
            r6 = 3
            if (r1 == r4) goto L7d
            r4 = 17
            if (r1 == r4) goto L70
            r4 = 35
            if (r1 == r4) goto L6a
            r4 = 842094169(0x32315659, float:1.0322389E-8)
            if (r1 != r4) goto L5c
            goto L70
        L5c:
            com.google.mlkit.common.MlKitException r0 = new com.google.mlkit.common.MlKitException
            int r11 = r11.d
            java.lang.String r1 = "Unsupported image format: "
            java.lang.String r11 = android.support.v4.media.a.e(r11, r1)
            r0.<init>(r11, r6)
            throw r0
        L6a:
            com.google.android.gms.dynamic.ObjectWrapper r11 = new com.google.android.gms.dynamic.ObjectWrapper
            r11.<init>(r5)
            goto L8b
        L70:
            java.lang.Object r11 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r5)
            java.nio.ByteBuffer r11 = (java.nio.ByteBuffer) r11
            com.google.android.gms.dynamic.ObjectWrapper r1 = new com.google.android.gms.dynamic.ObjectWrapper
            r1.<init>(r11)
        L7b:
            r11 = r1
            goto L8b
        L7d:
            android.graphics.Bitmap r11 = r11.f12808a
            java.lang.Object r11 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r11)
            android.graphics.Bitmap r11 = (android.graphics.Bitmap) r11
            com.google.android.gms.dynamic.ObjectWrapper r1 = new com.google.android.gms.dynamic.ObjectWrapper
            r1.<init>(r11)
            goto L7b
        L8b:
            android.os.Parcel r1 = r0.I1()     // Catch: android.os.RemoteException -> Lb8
            com.google.android.gms.internal.mlkit_vision_text_common.zzc.a(r1, r11)     // Catch: android.os.RemoteException -> Lb8
            r1.writeInt(r2)     // Catch: android.os.RemoteException -> Lb8
            r11 = 0
            r3.writeToParcel(r1, r11)     // Catch: android.os.RemoteException -> Lb8
            android.os.Parcel r11 = r0.f2(r6, r1)     // Catch: android.os.RemoteException -> Lb8
            android.os.Parcelable$Creator<com.google.android.gms.internal.mlkit_vision_text_common.zzvf> r0 = com.google.android.gms.internal.mlkit_vision_text_common.zzvf.CREATOR     // Catch: android.os.RemoteException -> Lb8
            int r1 = r11.readInt()     // Catch: android.os.RemoteException -> Lb8
            if (r1 != 0) goto La6
            goto Lad
        La6:
            java.lang.Object r0 = r0.createFromParcel(r11)     // Catch: android.os.RemoteException -> Lb8
            r5 = r0
            android.os.Parcelable r5 = (android.os.Parcelable) r5     // Catch: android.os.RemoteException -> Lb8
        Lad:
            com.google.android.gms.internal.mlkit_vision_text_common.zzvf r5 = (com.google.android.gms.internal.mlkit_vision_text_common.zzvf) r5     // Catch: android.os.RemoteException -> Lb8
            r11.recycle()     // Catch: android.os.RemoteException -> Lb8
            com.google.mlkit.vision.text.Text r11 = new com.google.mlkit.vision.text.Text     // Catch: android.os.RemoteException -> Lb8
            r11.<init>(r5)     // Catch: android.os.RemoteException -> Lb8
            return r11
        Lb8:
            r0 = move-exception
            r11 = r0
            com.google.mlkit.vision.text.TextRecognizerOptionsInterface r0 = r10.b
            java.lang.String r0 = r0.b()
            com.google.mlkit.common.MlKitException r1 = new com.google.mlkit.common.MlKitException
            java.lang.String r2 = "Failed to run text recognizer "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r11, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.text.internal.zzd.a(com.google.mlkit.vision.common.InputImage):com.google.mlkit.vision.text.Text");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzuu] */
    /* JADX WARN: Type inference failed for: r5v17, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzuy] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.gms.internal.mlkit_vision_text_common.zza] */
    @Override // com.google.mlkit.vision.text.internal.zzm
    public final void zzb() {
        String str;
        zzuv Q2;
        zzuc zzucVar = this.e;
        Context context = this.f12823a;
        TextRecognizerOptionsInterface textRecognizerOptionsInterface = this.b;
        if (this.f != null) {
            return;
        }
        try {
            boolean z = textRecognizerOptionsInterface instanceof zzb;
            zzuy zzuyVar = null;
            ?? r5 = 0;
            ?? r52 = 0;
            if (z) {
                str = ((zzb) textRecognizerOptionsInterface).zza();
            } else {
                str = null;
            }
            if (textRecognizerOptionsInterface.g()) {
                Log.d("DecoupledTextDelegate", "Start loading thick OCR module.");
                IBinder b = DynamiteModule.c(context, DynamiteModule.f3728c, textRecognizerOptionsInterface.i()).b("com.google.mlkit.vision.text.bundled.common.BundledTextRecognizerCreator");
                int i = zzux.f11435c;
                if (b != null) {
                    IInterface queryLocalInterface = b.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
                    if (queryLocalInterface instanceof zzuy) {
                        r5 = (zzuy) queryLocalInterface;
                    } else {
                        r5 = new com.google.android.gms.internal.mlkit_vision_text_common.zza(b, "com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
                    }
                }
                Q2 = r5.Q2(new ObjectWrapper(context), b(textRecognizerOptionsInterface, str));
            } else if (z) {
                Log.d("DecoupledTextDelegate", "Start loading custom OCR module.");
                IBinder b2 = DynamiteModule.c(context, DynamiteModule.b, textRecognizerOptionsInterface.i()).b("com.google.android.gms.vision.text.mlkit.CommonTextRecognizerCreator");
                int i2 = zzut.f11434c;
                if (b2 != null) {
                    IInterface queryLocalInterface2 = b2.queryLocalInterface("com.google.mlkit.vision.text.aidls.ICommonTextRecognizerCreator");
                    if (queryLocalInterface2 instanceof zzuu) {
                        r52 = (zzuu) queryLocalInterface2;
                    } else {
                        r52 = new com.google.android.gms.internal.mlkit_vision_text_common.zza(b2, "com.google.mlkit.vision.text.aidls.ICommonTextRecognizerCreator");
                    }
                }
                Q2 = r52.E3(new ObjectWrapper(context), b(textRecognizerOptionsInterface, str));
            } else {
                Log.d("DecoupledTextDelegate", "Start loading thin OCR module.");
                IBinder b3 = DynamiteModule.c(context, DynamiteModule.b, textRecognizerOptionsInterface.i()).b("com.google.android.gms.vision.text.mlkit.TextRecognizerCreator");
                int i3 = zzux.f11435c;
                if (b3 != null) {
                    IInterface queryLocalInterface3 = b3.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
                    if (queryLocalInterface3 instanceof zzuy) {
                        zzuyVar = (zzuy) queryLocalInterface3;
                    } else {
                        zzuyVar = new com.google.android.gms.internal.mlkit_vision_text_common.zza(b3, "com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
                    }
                }
                if (textRecognizerOptionsInterface.d() == 1) {
                    Q2 = zzuyVar.F2(new ObjectWrapper(context));
                } else {
                    Q2 = zzuyVar.Q2(new ObjectWrapper(context), b(textRecognizerOptionsInterface, str));
                }
            }
            this.f = Q2;
            final boolean g = textRecognizerOptionsInterface.g();
            final zzou zzouVar = zzou.NO_ERROR;
            zzucVar.b(new zzub() { // from class: com.google.mlkit.vision.text.internal.zzl
                /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
                /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzru] */
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzub
                public final zzuf zza() {
                    zzot zzotVar;
                    ?? obj = new Object();
                    if (g) {
                        zzotVar = zzot.TYPE_THICK;
                    } else {
                        zzotVar = zzot.TYPE_THIN;
                    }
                    obj.f11393c = zzotVar;
                    ?? obj2 = new Object();
                    obj2.f11398a = zzouVar;
                    obj.e = new zzrw(obj2);
                    return new zzuf(obj, 0);
                }
            }, zzov.ON_DEVICE_TEXT_LOAD);
        } catch (RemoteException e) {
            final boolean g2 = textRecognizerOptionsInterface.g();
            final zzou zzouVar2 = zzou.OPTIONAL_MODULE_INIT_ERROR;
            zzucVar.b(new zzub() { // from class: com.google.mlkit.vision.text.internal.zzl
                /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
                /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzru] */
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzub
                public final zzuf zza() {
                    zzot zzotVar;
                    ?? obj = new Object();
                    if (g2) {
                        zzotVar = zzot.TYPE_THICK;
                    } else {
                        zzotVar = zzot.TYPE_THIN;
                    }
                    obj.f11393c = zzotVar;
                    ?? obj2 = new Object();
                    obj2.f11398a = zzouVar2;
                    obj.e = new zzrw(obj2);
                    return new zzuf(obj, 0);
                }
            }, zzov.ON_DEVICE_TEXT_LOAD);
            throw new MlKitException(e, "Failed to create text recognizer ".concat(textRecognizerOptionsInterface.b()));
        } catch (DynamiteModule.LoadingException e2) {
            final boolean g3 = textRecognizerOptionsInterface.g();
            final zzou zzouVar3 = zzou.OPTIONAL_MODULE_NOT_AVAILABLE;
            zzucVar.b(new zzub() { // from class: com.google.mlkit.vision.text.internal.zzl
                /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
                /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzru] */
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzub
                public final zzuf zza() {
                    zzot zzotVar;
                    ?? obj = new Object();
                    if (g3) {
                        zzotVar = zzot.TYPE_THICK;
                    } else {
                        zzotVar = zzot.TYPE_THIN;
                    }
                    obj.f11393c = zzotVar;
                    ?? obj2 = new Object();
                    obj2.f11398a = zzouVar3;
                    obj.e = new zzrw(obj2);
                    return new zzuf(obj, 0);
                }
            }, zzov.ON_DEVICE_TEXT_LOAD);
            if (!textRecognizerOptionsInterface.g()) {
                if (!this.d) {
                    OptionalModuleUtils.b(context, TextOptionalModuleUtils.a(textRecognizerOptionsInterface));
                    this.d = true;
                }
                throw new MlKitException("Waiting for the text optional module to be downloaded. Please wait.", 14);
            }
            throw new MlKitException(e2, a.m("Failed to load text module ", textRecognizerOptionsInterface.b(), ". ", e2.getMessage()));
        }
    }

    @Override // com.google.mlkit.vision.text.internal.zzm
    public final void zzc() {
        zzuv zzuvVar = this.f;
        if (zzuvVar != null) {
            try {
                zzuvVar.r2(2, zzuvVar.I1());
            } catch (RemoteException e) {
                Log.e("DecoupledTextDelegate", "Failed to release text recognizer ".concat(this.b.b()), e);
            }
            this.f = null;
        }
        this.f12824c = false;
    }
}
