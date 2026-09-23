package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfe implements ObjectEncoder {
    public static final FieldDescriptor A;
    public static final FieldDescriptor A0;
    public static final FieldDescriptor B;
    public static final FieldDescriptor B0;
    public static final FieldDescriptor C;
    public static final FieldDescriptor C0;
    public static final FieldDescriptor D;
    public static final FieldDescriptor D0;
    public static final FieldDescriptor E;
    public static final FieldDescriptor E0;
    public static final FieldDescriptor F;
    public static final FieldDescriptor F0;
    public static final FieldDescriptor G;
    public static final FieldDescriptor G0;
    public static final FieldDescriptor H;
    public static final FieldDescriptor H0;
    public static final FieldDescriptor I;
    public static final FieldDescriptor I0;
    public static final FieldDescriptor J;
    public static final FieldDescriptor J0;
    public static final FieldDescriptor K;
    public static final FieldDescriptor K0;
    public static final FieldDescriptor L;
    public static final FieldDescriptor L0;
    public static final FieldDescriptor M;
    public static final FieldDescriptor M0;
    public static final FieldDescriptor N;
    public static final FieldDescriptor N0;
    public static final FieldDescriptor O;
    public static final FieldDescriptor O0;
    public static final FieldDescriptor P;
    public static final FieldDescriptor P0;
    public static final FieldDescriptor Q;
    public static final FieldDescriptor Q0;
    public static final FieldDescriptor R;
    public static final FieldDescriptor R0;
    public static final FieldDescriptor S;
    public static final FieldDescriptor S0;
    public static final FieldDescriptor T;
    public static final FieldDescriptor T0;
    public static final FieldDescriptor U;
    public static final FieldDescriptor U0;
    public static final FieldDescriptor V;
    public static final FieldDescriptor V0;
    public static final FieldDescriptor W;
    public static final FieldDescriptor W0;
    public static final FieldDescriptor X;
    public static final FieldDescriptor X0;
    public static final FieldDescriptor Y;
    public static final FieldDescriptor Y0;
    public static final FieldDescriptor Z;
    public static final FieldDescriptor Z0;

    /* renamed from: a, reason: collision with root package name */
    public static final zzfe f10515a = new Object();
    public static final FieldDescriptor a0;
    public static final FieldDescriptor a1;
    public static final FieldDescriptor b;
    public static final FieldDescriptor b0;
    public static final FieldDescriptor b1;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10516c;
    public static final FieldDescriptor c0;
    public static final FieldDescriptor c1;
    public static final FieldDescriptor d;
    public static final FieldDescriptor d0;
    public static final FieldDescriptor e;
    public static final FieldDescriptor e0;
    public static final FieldDescriptor f;
    public static final FieldDescriptor f0;
    public static final FieldDescriptor g;
    public static final FieldDescriptor g0;
    public static final FieldDescriptor h;
    public static final FieldDescriptor h0;
    public static final FieldDescriptor i;
    public static final FieldDescriptor i0;
    public static final FieldDescriptor j;
    public static final FieldDescriptor j0;
    public static final FieldDescriptor k;
    public static final FieldDescriptor k0;
    public static final FieldDescriptor l;
    public static final FieldDescriptor l0;
    public static final FieldDescriptor m;
    public static final FieldDescriptor m0;
    public static final FieldDescriptor n;
    public static final FieldDescriptor n0;
    public static final FieldDescriptor o;
    public static final FieldDescriptor o0;
    public static final FieldDescriptor p;
    public static final FieldDescriptor p0;
    public static final FieldDescriptor q;
    public static final FieldDescriptor q0;
    public static final FieldDescriptor r;
    public static final FieldDescriptor r0;
    public static final FieldDescriptor s;
    public static final FieldDescriptor s0;
    public static final FieldDescriptor t;
    public static final FieldDescriptor t0;
    public static final FieldDescriptor u;
    public static final FieldDescriptor u0;
    public static final FieldDescriptor v;
    public static final FieldDescriptor v0;
    public static final FieldDescriptor w;
    public static final FieldDescriptor w0;
    public static final FieldDescriptor x;
    public static final FieldDescriptor x0;
    public static final FieldDescriptor y;
    public static final FieldDescriptor y0;
    public static final FieldDescriptor z;
    public static final FieldDescriptor z0;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzfe] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v101, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v103, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v105, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v107, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v109, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v111, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v113, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v115, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v117, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v119, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v121, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v123, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v125, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v127, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v129, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v131, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v133, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v135, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v137, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v139, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v141, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v143, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v145, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v147, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v149, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v151, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v153, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v155, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v157, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v159, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v161, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v163, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v165, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v167, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v169, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v171, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v173, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v175, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v177, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v179, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v181, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v183, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v185, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v187, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v189, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v191, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v193, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v195, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v197, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v199, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v201, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v203, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v205, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v207, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v209, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v211, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v29, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v31, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v33, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v35, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v39, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v41, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v43, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v45, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v47, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v49, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v51, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v53, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v55, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v57, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v59, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v61, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v63, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v65, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v67, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v69, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v71, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v73, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v75, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v77, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v79, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v81, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v83, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v85, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v87, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v89, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v91, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v93, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v95, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v97, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v99, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("systemInfo");
        ?? obj = new Object();
        obj.f10416a = 1;
        b = a.n(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("eventName");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        f10516c = a.n(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("isThickClient");
        ?? obj3 = new Object();
        obj3.f10416a = 37;
        d = a.n(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("clientType");
        ?? obj4 = new Object();
        obj4.f10416a = 61;
        e = a.n(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("modelDownloadLogEvent");
        ?? obj5 = new Object();
        obj5.f10416a = 3;
        f = a.n(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("customModelLoadLogEvent");
        ?? obj6 = new Object();
        obj6.f10416a = 20;
        g = a.n(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("customModelInferenceLogEvent");
        ?? obj7 = new Object();
        obj7.f10416a = 4;
        h = a.n(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("customModelCreateLogEvent");
        ?? obj8 = new Object();
        obj8.f10416a = 29;
        i = a.n(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("onDeviceFaceDetectionLogEvent");
        ?? obj9 = new Object();
        obj9.f10416a = 5;
        j = a.n(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("onDeviceFaceLoadLogEvent");
        ?? obj10 = new Object();
        obj10.f10416a = 59;
        k = a.n(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("onDeviceTextDetectionLogEvent");
        ?? obj11 = new Object();
        obj11.f10416a = 6;
        l = a.n(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("onDeviceTextDetectionLoadLogEvent");
        ?? obj12 = new Object();
        obj12.f10416a = 79;
        m = a.n(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("onDeviceBarcodeDetectionLogEvent");
        ?? obj13 = new Object();
        obj13.f10416a = 7;
        n = a.n(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("onDeviceBarcodeLoadLogEvent");
        ?? obj14 = new Object();
        obj14.f10416a = 58;
        o = a.n(obj14, builder14);
        FieldDescriptor.Builder builder15 = new FieldDescriptor.Builder("onDeviceImageLabelCreateLogEvent");
        ?? obj15 = new Object();
        obj15.f10416a = 48;
        p = a.n(obj15, builder15);
        FieldDescriptor.Builder builder16 = new FieldDescriptor.Builder("onDeviceImageLabelLoadLogEvent");
        ?? obj16 = new Object();
        obj16.f10416a = 49;
        q = a.n(obj16, builder16);
        FieldDescriptor.Builder builder17 = new FieldDescriptor.Builder("onDeviceImageLabelDetectionLogEvent");
        ?? obj17 = new Object();
        obj17.f10416a = 18;
        r = a.n(obj17, builder17);
        FieldDescriptor.Builder builder18 = new FieldDescriptor.Builder("onDeviceObjectCreateLogEvent");
        ?? obj18 = new Object();
        obj18.f10416a = 26;
        s = a.n(obj18, builder18);
        FieldDescriptor.Builder builder19 = new FieldDescriptor.Builder("onDeviceObjectLoadLogEvent");
        ?? obj19 = new Object();
        obj19.f10416a = 27;
        t = a.n(obj19, builder19);
        FieldDescriptor.Builder builder20 = new FieldDescriptor.Builder("onDeviceObjectInferenceLogEvent");
        ?? obj20 = new Object();
        obj20.f10416a = 28;
        u = a.n(obj20, builder20);
        FieldDescriptor.Builder builder21 = new FieldDescriptor.Builder("onDevicePoseDetectionLogEvent");
        ?? obj21 = new Object();
        obj21.f10416a = 44;
        v = a.n(obj21, builder21);
        FieldDescriptor.Builder builder22 = new FieldDescriptor.Builder("onDeviceSegmentationLogEvent");
        ?? obj22 = new Object();
        obj22.f10416a = 45;
        w = a.n(obj22, builder22);
        FieldDescriptor.Builder builder23 = new FieldDescriptor.Builder("onDeviceSmartReplyLogEvent");
        ?? obj23 = new Object();
        obj23.f10416a = 19;
        x = a.n(obj23, builder23);
        FieldDescriptor.Builder builder24 = new FieldDescriptor.Builder("onDeviceLanguageIdentificationLogEvent");
        ?? obj24 = new Object();
        obj24.f10416a = 21;
        y = a.n(obj24, builder24);
        FieldDescriptor.Builder builder25 = new FieldDescriptor.Builder("onDeviceTranslationLogEvent");
        ?? obj25 = new Object();
        obj25.f10416a = 22;
        z = a.n(obj25, builder25);
        FieldDescriptor.Builder builder26 = new FieldDescriptor.Builder("cloudFaceDetectionLogEvent");
        ?? obj26 = new Object();
        obj26.f10416a = 8;
        A = a.n(obj26, builder26);
        FieldDescriptor.Builder builder27 = new FieldDescriptor.Builder("cloudCropHintDetectionLogEvent");
        ?? obj27 = new Object();
        obj27.f10416a = 9;
        B = a.n(obj27, builder27);
        FieldDescriptor.Builder builder28 = new FieldDescriptor.Builder("cloudDocumentTextDetectionLogEvent");
        ?? obj28 = new Object();
        obj28.f10416a = 10;
        C = a.n(obj28, builder28);
        FieldDescriptor.Builder builder29 = new FieldDescriptor.Builder("cloudImagePropertiesDetectionLogEvent");
        ?? obj29 = new Object();
        obj29.f10416a = 11;
        D = a.n(obj29, builder29);
        FieldDescriptor.Builder builder30 = new FieldDescriptor.Builder("cloudImageLabelDetectionLogEvent");
        ?? obj30 = new Object();
        obj30.f10416a = 12;
        E = a.n(obj30, builder30);
        FieldDescriptor.Builder builder31 = new FieldDescriptor.Builder("cloudLandmarkDetectionLogEvent");
        ?? obj31 = new Object();
        obj31.f10416a = 13;
        F = a.n(obj31, builder31);
        FieldDescriptor.Builder builder32 = new FieldDescriptor.Builder("cloudLogoDetectionLogEvent");
        ?? obj32 = new Object();
        obj32.f10416a = 14;
        G = a.n(obj32, builder32);
        FieldDescriptor.Builder builder33 = new FieldDescriptor.Builder("cloudSafeSearchDetectionLogEvent");
        ?? obj33 = new Object();
        obj33.f10416a = 15;
        H = a.n(obj33, builder33);
        FieldDescriptor.Builder builder34 = new FieldDescriptor.Builder("cloudTextDetectionLogEvent");
        ?? obj34 = new Object();
        obj34.f10416a = 16;
        I = a.n(obj34, builder34);
        FieldDescriptor.Builder builder35 = new FieldDescriptor.Builder("cloudWebSearchDetectionLogEvent");
        ?? obj35 = new Object();
        obj35.f10416a = 17;
        J = a.n(obj35, builder35);
        FieldDescriptor.Builder builder36 = new FieldDescriptor.Builder("automlImageLabelingCreateLogEvent");
        ?? obj36 = new Object();
        obj36.f10416a = 23;
        K = a.n(obj36, builder36);
        FieldDescriptor.Builder builder37 = new FieldDescriptor.Builder("automlImageLabelingLoadLogEvent");
        ?? obj37 = new Object();
        obj37.f10416a = 24;
        L = a.n(obj37, builder37);
        FieldDescriptor.Builder builder38 = new FieldDescriptor.Builder("automlImageLabelingInferenceLogEvent");
        ?? obj38 = new Object();
        obj38.f10416a = 25;
        M = a.n(obj38, builder38);
        FieldDescriptor.Builder builder39 = new FieldDescriptor.Builder("isModelDownloadedLogEvent");
        ?? obj39 = new Object();
        obj39.f10416a = 39;
        N = a.n(obj39, builder39);
        FieldDescriptor.Builder builder40 = new FieldDescriptor.Builder("deleteModelLogEvent");
        ?? obj40 = new Object();
        obj40.f10416a = 40;
        O = a.n(obj40, builder40);
        FieldDescriptor.Builder builder41 = new FieldDescriptor.Builder("aggregatedAutomlImageLabelingInferenceLogEvent");
        ?? obj41 = new Object();
        obj41.f10416a = 30;
        P = a.n(obj41, builder41);
        FieldDescriptor.Builder builder42 = new FieldDescriptor.Builder("aggregatedCustomModelInferenceLogEvent");
        ?? obj42 = new Object();
        obj42.f10416a = 31;
        Q = a.n(obj42, builder42);
        FieldDescriptor.Builder builder43 = new FieldDescriptor.Builder("aggregatedOnDeviceFaceDetectionLogEvent");
        ?? obj43 = new Object();
        obj43.f10416a = 32;
        R = a.n(obj43, builder43);
        FieldDescriptor.Builder builder44 = new FieldDescriptor.Builder("aggregatedOnDeviceBarcodeDetectionLogEvent");
        ?? obj44 = new Object();
        obj44.f10416a = 33;
        S = a.n(obj44, builder44);
        FieldDescriptor.Builder builder45 = new FieldDescriptor.Builder("aggregatedOnDeviceImageLabelDetectionLogEvent");
        ?? obj45 = new Object();
        obj45.f10416a = 34;
        T = a.n(obj45, builder45);
        FieldDescriptor.Builder builder46 = new FieldDescriptor.Builder("aggregatedOnDeviceObjectInferenceLogEvent");
        ?? obj46 = new Object();
        obj46.f10416a = 35;
        U = a.n(obj46, builder46);
        FieldDescriptor.Builder builder47 = new FieldDescriptor.Builder("aggregatedOnDeviceTextDetectionLogEvent");
        ?? obj47 = new Object();
        obj47.f10416a = 36;
        V = a.n(obj47, builder47);
        FieldDescriptor.Builder builder48 = new FieldDescriptor.Builder("aggregatedOnDevicePoseDetectionLogEvent");
        ?? obj48 = new Object();
        obj48.f10416a = 46;
        W = a.n(obj48, builder48);
        FieldDescriptor.Builder builder49 = new FieldDescriptor.Builder("aggregatedOnDeviceSegmentationLogEvent");
        ?? obj49 = new Object();
        obj49.f10416a = 47;
        X = a.n(obj49, builder49);
        FieldDescriptor.Builder builder50 = new FieldDescriptor.Builder("pipelineAccelerationInferenceEvents");
        ?? obj50 = new Object();
        obj50.f10416a = 69;
        Y = a.n(obj50, builder50);
        FieldDescriptor.Builder builder51 = new FieldDescriptor.Builder("remoteConfigLogEvent");
        ?? obj51 = new Object();
        obj51.f10416a = 42;
        Z = a.n(obj51, builder51);
        FieldDescriptor.Builder builder52 = new FieldDescriptor.Builder("inputImageConstructionLogEvent");
        ?? obj52 = new Object();
        obj52.f10416a = 50;
        a0 = a.n(obj52, builder52);
        FieldDescriptor.Builder builder53 = new FieldDescriptor.Builder("leakedHandleEvent");
        ?? obj53 = new Object();
        obj53.f10416a = 51;
        b0 = a.n(obj53, builder53);
        FieldDescriptor.Builder builder54 = new FieldDescriptor.Builder("cameraSourceLogEvent");
        ?? obj54 = new Object();
        obj54.f10416a = 52;
        c0 = a.n(obj54, builder54);
        FieldDescriptor.Builder builder55 = new FieldDescriptor.Builder("imageLabelOptionalModuleLogEvent");
        ?? obj55 = new Object();
        obj55.f10416a = 53;
        d0 = a.n(obj55, builder55);
        FieldDescriptor.Builder builder56 = new FieldDescriptor.Builder("languageIdentificationOptionalModuleLogEvent");
        ?? obj56 = new Object();
        obj56.f10416a = 54;
        e0 = a.n(obj56, builder56);
        FieldDescriptor.Builder builder57 = new FieldDescriptor.Builder("faceDetectionOptionalModuleLogEvent");
        ?? obj57 = new Object();
        obj57.f10416a = 60;
        f0 = a.n(obj57, builder57);
        FieldDescriptor.Builder builder58 = new FieldDescriptor.Builder("documentDetectionOptionalModuleLogEvent");
        ?? obj58 = new Object();
        obj58.f10416a = 85;
        g0 = a.n(obj58, builder58);
        FieldDescriptor.Builder builder59 = new FieldDescriptor.Builder("documentCroppingOptionalModuleLogEvent");
        ?? obj59 = new Object();
        obj59.f10416a = 86;
        h0 = a.n(obj59, builder59);
        FieldDescriptor.Builder builder60 = new FieldDescriptor.Builder("documentEnhancementOptionalModuleLogEvent");
        ?? obj60 = new Object();
        obj60.f10416a = 87;
        i0 = a.n(obj60, builder60);
        FieldDescriptor.Builder builder61 = new FieldDescriptor.Builder("nlClassifierOptionalModuleLogEvent");
        ?? obj61 = new Object();
        obj61.f10416a = 55;
        j0 = a.n(obj61, builder61);
        FieldDescriptor.Builder builder62 = new FieldDescriptor.Builder("nlClassifierClientLibraryLogEvent");
        ?? obj62 = new Object();
        obj62.f10416a = 56;
        k0 = a.n(obj62, builder62);
        FieldDescriptor.Builder builder63 = new FieldDescriptor.Builder("accelerationAllowlistLogEvent");
        ?? obj63 = new Object();
        obj63.f10416a = 57;
        l0 = a.n(obj63, builder63);
        FieldDescriptor.Builder builder64 = new FieldDescriptor.Builder("toxicityDetectionCreateEvent");
        ?? obj64 = new Object();
        obj64.f10416a = 62;
        m0 = a.n(obj64, builder64);
        FieldDescriptor.Builder builder65 = new FieldDescriptor.Builder("toxicityDetectionLoadEvent");
        ?? obj65 = new Object();
        obj65.f10416a = 63;
        n0 = a.n(obj65, builder65);
        FieldDescriptor.Builder builder66 = new FieldDescriptor.Builder("toxicityDetectionInferenceEvent");
        ?? obj66 = new Object();
        obj66.f10416a = 64;
        o0 = a.n(obj66, builder66);
        FieldDescriptor.Builder builder67 = new FieldDescriptor.Builder("barcodeDetectionOptionalModuleLogEvent");
        ?? obj67 = new Object();
        obj67.f10416a = 65;
        p0 = a.n(obj67, builder67);
        FieldDescriptor.Builder builder68 = new FieldDescriptor.Builder("customImageLabelOptionalModuleLogEvent");
        ?? obj68 = new Object();
        obj68.f10416a = 66;
        q0 = a.n(obj68, builder68);
        FieldDescriptor.Builder builder69 = new FieldDescriptor.Builder("codeScannerScanApiEvent");
        ?? obj69 = new Object();
        obj69.f10416a = 67;
        r0 = a.n(obj69, builder69);
        FieldDescriptor.Builder builder70 = new FieldDescriptor.Builder("codeScannerOptionalModuleEvent");
        ?? obj70 = new Object();
        obj70.f10416a = 68;
        s0 = a.n(obj70, builder70);
        FieldDescriptor.Builder builder71 = new FieldDescriptor.Builder("onDeviceExplicitContentCreateLogEvent");
        ?? obj71 = new Object();
        obj71.f10416a = 70;
        t0 = a.n(obj71, builder71);
        FieldDescriptor.Builder builder72 = new FieldDescriptor.Builder("onDeviceExplicitContentLoadLogEvent");
        ?? obj72 = new Object();
        obj72.f10416a = 71;
        u0 = a.n(obj72, builder72);
        FieldDescriptor.Builder builder73 = new FieldDescriptor.Builder("onDeviceExplicitContentInferenceLogEvent");
        ?? obj73 = new Object();
        obj73.f10416a = 72;
        v0 = a.n(obj73, builder73);
        FieldDescriptor.Builder builder74 = new FieldDescriptor.Builder("aggregatedOnDeviceExplicitContentLogEvent");
        ?? obj74 = new Object();
        obj74.f10416a = 73;
        w0 = a.n(obj74, builder74);
        FieldDescriptor.Builder builder75 = new FieldDescriptor.Builder("onDeviceFaceMeshCreateLogEvent");
        ?? obj75 = new Object();
        obj75.f10416a = 74;
        x0 = a.n(obj75, builder75);
        FieldDescriptor.Builder builder76 = new FieldDescriptor.Builder("onDeviceFaceMeshLoadLogEvent");
        ?? obj76 = new Object();
        obj76.f10416a = 75;
        y0 = a.n(obj76, builder76);
        FieldDescriptor.Builder builder77 = new FieldDescriptor.Builder("onDeviceFaceMeshLogEvent");
        ?? obj77 = new Object();
        obj77.f10416a = 76;
        z0 = a.n(obj77, builder77);
        FieldDescriptor.Builder builder78 = new FieldDescriptor.Builder("aggregatedOnDeviceFaceMeshLogEvent");
        ?? obj78 = new Object();
        obj78.f10416a = 77;
        A0 = a.n(obj78, builder78);
        FieldDescriptor.Builder builder79 = new FieldDescriptor.Builder("smartReplyOptionalModuleLogEvent");
        ?? obj79 = new Object();
        obj79.f10416a = 78;
        B0 = a.n(obj79, builder79);
        FieldDescriptor.Builder builder80 = new FieldDescriptor.Builder("textDetectionOptionalModuleLogEvent");
        ?? obj80 = new Object();
        obj80.f10416a = 80;
        C0 = a.n(obj80, builder80);
        FieldDescriptor.Builder builder81 = new FieldDescriptor.Builder("onDeviceImageQualityAnalysisCreateLogEvent");
        ?? obj81 = new Object();
        obj81.f10416a = 81;
        D0 = a.n(obj81, builder81);
        FieldDescriptor.Builder builder82 = new FieldDescriptor.Builder("onDeviceImageQualityAnalysisLoadLogEvent");
        ?? obj82 = new Object();
        obj82.f10416a = 82;
        E0 = a.n(obj82, builder82);
        FieldDescriptor.Builder builder83 = new FieldDescriptor.Builder("onDeviceImageQualityAnalysisLogEvent");
        ?? obj83 = new Object();
        obj83.f10416a = 83;
        F0 = a.n(obj83, builder83);
        FieldDescriptor.Builder builder84 = new FieldDescriptor.Builder("aggregatedOnDeviceImageQualityAnalysisLogEvent");
        ?? obj84 = new Object();
        obj84.f10416a = 84;
        G0 = a.n(obj84, builder84);
        FieldDescriptor.Builder builder85 = new FieldDescriptor.Builder("imageQualityAnalysisOptionalModuleLogEvent");
        ?? obj85 = new Object();
        obj85.f10416a = 88;
        H0 = a.n(obj85, builder85);
        FieldDescriptor.Builder builder86 = new FieldDescriptor.Builder("imageCaptioningOptionalModuleLogEvent");
        ?? obj86 = new Object();
        obj86.f10416a = 89;
        I0 = a.n(obj86, builder86);
        FieldDescriptor.Builder builder87 = new FieldDescriptor.Builder("onDeviceImageCaptioningCreateLogEvent");
        ?? obj87 = new Object();
        obj87.f10416a = 90;
        J0 = a.n(obj87, builder87);
        FieldDescriptor.Builder builder88 = new FieldDescriptor.Builder("onDeviceImageCaptioningLoadLogEvent");
        ?? obj88 = new Object();
        obj88.f10416a = 91;
        K0 = a.n(obj88, builder88);
        FieldDescriptor.Builder builder89 = new FieldDescriptor.Builder("onDeviceImageCaptioningInferenceLogEvent");
        ?? obj89 = new Object();
        obj89.f10416a = 92;
        L0 = a.n(obj89, builder89);
        FieldDescriptor.Builder builder90 = new FieldDescriptor.Builder("aggregatedOnDeviceImageCaptioningInferenceLogEvent");
        ?? obj90 = new Object();
        obj90.f10416a = 93;
        M0 = a.n(obj90, builder90);
        FieldDescriptor.Builder builder91 = new FieldDescriptor.Builder("onDeviceDocumentDetectionCreateLogEvent");
        ?? obj91 = new Object();
        obj91.f10416a = 94;
        N0 = a.n(obj91, builder91);
        FieldDescriptor.Builder builder92 = new FieldDescriptor.Builder("onDeviceDocumentDetectionLoadLogEvent");
        ?? obj92 = new Object();
        obj92.f10416a = 95;
        O0 = a.n(obj92, builder92);
        FieldDescriptor.Builder builder93 = new FieldDescriptor.Builder("onDeviceDocumentDetectionLogEvent");
        ?? obj93 = new Object();
        obj93.f10416a = 96;
        P0 = a.n(obj93, builder93);
        FieldDescriptor.Builder builder94 = new FieldDescriptor.Builder("aggregatedOnDeviceDocumentDetectionLogEvent");
        ?? obj94 = new Object();
        obj94.f10416a = 97;
        Q0 = a.n(obj94, builder94);
        FieldDescriptor.Builder builder95 = new FieldDescriptor.Builder("onDeviceDocumentCroppingCreateLogEvent");
        ?? obj95 = new Object();
        obj95.f10416a = 98;
        R0 = a.n(obj95, builder95);
        FieldDescriptor.Builder builder96 = new FieldDescriptor.Builder("onDeviceDocumentCroppingLoadLogEvent");
        ?? obj96 = new Object();
        obj96.f10416a = 99;
        S0 = a.n(obj96, builder96);
        FieldDescriptor.Builder builder97 = new FieldDescriptor.Builder("onDeviceDocumentCroppingLogEvent");
        ?? obj97 = new Object();
        obj97.f10416a = 100;
        T0 = a.n(obj97, builder97);
        FieldDescriptor.Builder builder98 = new FieldDescriptor.Builder("aggregatedOnDeviceDocumentCroppingLogEvent");
        ?? obj98 = new Object();
        obj98.f10416a = 101;
        U0 = a.n(obj98, builder98);
        FieldDescriptor.Builder builder99 = new FieldDescriptor.Builder("onDeviceDocumentEnhancementCreateLogEvent");
        ?? obj99 = new Object();
        obj99.f10416a = 102;
        V0 = a.n(obj99, builder99);
        FieldDescriptor.Builder builder100 = new FieldDescriptor.Builder("onDeviceDocumentEnhancementLoadLogEvent");
        ?? obj100 = new Object();
        obj100.f10416a = 103;
        W0 = a.n(obj100, builder100);
        FieldDescriptor.Builder builder101 = new FieldDescriptor.Builder("onDeviceDocumentEnhancementLogEvent");
        ?? obj101 = new Object();
        obj101.f10416a = 104;
        X0 = a.n(obj101, builder101);
        FieldDescriptor.Builder builder102 = new FieldDescriptor.Builder("aggregatedOnDeviceDocumentEnhancementLogEvent");
        ?? obj102 = new Object();
        obj102.f10416a = 105;
        Y0 = a.n(obj102, builder102);
        FieldDescriptor.Builder builder103 = new FieldDescriptor.Builder("scannerAutoZoomEvent");
        ?? obj103 = new Object();
        obj103.f10416a = 106;
        Z0 = a.n(obj103, builder103);
        FieldDescriptor.Builder builder104 = new FieldDescriptor.Builder("lowLightAutoExposureComputationEvent");
        ?? obj104 = new Object();
        obj104.f10416a = 107;
        a1 = a.n(obj104, builder104);
        FieldDescriptor.Builder builder105 = new FieldDescriptor.Builder("lowLightFrameProcessEvent");
        ?? obj105 = new Object();
        obj105.f10416a = 108;
        b1 = a.n(obj105, builder105);
        FieldDescriptor.Builder builder106 = new FieldDescriptor.Builder("lowLightSceneDetectionEvent");
        ?? obj106 = new Object();
        obj106.f10416a = 109;
        c1 = a.n(obj106, builder106);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzke zzkeVar = (zzke) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzkeVar.f10609a);
        objectEncoderContext.d(f10516c, zzkeVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, null);
        objectEncoderContext.d(f, null);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, null);
        objectEncoderContext.d(j, null);
        objectEncoderContext.d(k, null);
        objectEncoderContext.d(l, null);
        objectEncoderContext.d(m, null);
        objectEncoderContext.d(n, null);
        objectEncoderContext.d(o, null);
        objectEncoderContext.d(p, null);
        objectEncoderContext.d(q, null);
        objectEncoderContext.d(r, null);
        objectEncoderContext.d(s, null);
        objectEncoderContext.d(t, null);
        objectEncoderContext.d(u, null);
        objectEncoderContext.d(v, null);
        objectEncoderContext.d(w, null);
        objectEncoderContext.d(x, null);
        objectEncoderContext.d(y, null);
        objectEncoderContext.d(z, null);
        objectEncoderContext.d(A, null);
        objectEncoderContext.d(B, null);
        objectEncoderContext.d(C, null);
        objectEncoderContext.d(D, null);
        objectEncoderContext.d(E, null);
        objectEncoderContext.d(F, null);
        objectEncoderContext.d(G, null);
        objectEncoderContext.d(H, null);
        objectEncoderContext.d(I, null);
        objectEncoderContext.d(J, null);
        objectEncoderContext.d(K, null);
        objectEncoderContext.d(L, null);
        objectEncoderContext.d(M, null);
        objectEncoderContext.d(N, null);
        objectEncoderContext.d(O, null);
        objectEncoderContext.d(P, null);
        objectEncoderContext.d(Q, null);
        objectEncoderContext.d(R, null);
        objectEncoderContext.d(S, null);
        objectEncoderContext.d(T, null);
        objectEncoderContext.d(U, null);
        objectEncoderContext.d(V, null);
        objectEncoderContext.d(W, null);
        objectEncoderContext.d(X, null);
        objectEncoderContext.d(Y, null);
        objectEncoderContext.d(Z, null);
        objectEncoderContext.d(a0, null);
        objectEncoderContext.d(b0, null);
        objectEncoderContext.d(c0, null);
        objectEncoderContext.d(d0, null);
        objectEncoderContext.d(e0, null);
        objectEncoderContext.d(f0, null);
        objectEncoderContext.d(g0, null);
        objectEncoderContext.d(h0, null);
        objectEncoderContext.d(i0, null);
        objectEncoderContext.d(j0, null);
        objectEncoderContext.d(k0, null);
        objectEncoderContext.d(l0, null);
        objectEncoderContext.d(m0, null);
        objectEncoderContext.d(n0, null);
        objectEncoderContext.d(o0, null);
        objectEncoderContext.d(p0, null);
        objectEncoderContext.d(q0, null);
        objectEncoderContext.d(r0, zzkeVar.f10610c);
        objectEncoderContext.d(s0, null);
        objectEncoderContext.d(t0, null);
        objectEncoderContext.d(u0, null);
        objectEncoderContext.d(v0, null);
        objectEncoderContext.d(w0, null);
        objectEncoderContext.d(x0, null);
        objectEncoderContext.d(y0, null);
        objectEncoderContext.d(z0, null);
        objectEncoderContext.d(A0, null);
        objectEncoderContext.d(B0, null);
        objectEncoderContext.d(C0, null);
        objectEncoderContext.d(D0, null);
        objectEncoderContext.d(E0, null);
        objectEncoderContext.d(F0, null);
        objectEncoderContext.d(G0, null);
        objectEncoderContext.d(H0, null);
        objectEncoderContext.d(I0, null);
        objectEncoderContext.d(J0, null);
        objectEncoderContext.d(K0, null);
        objectEncoderContext.d(L0, null);
        objectEncoderContext.d(M0, null);
        objectEncoderContext.d(N0, null);
        objectEncoderContext.d(O0, null);
        objectEncoderContext.d(P0, null);
        objectEncoderContext.d(Q0, null);
        objectEncoderContext.d(R0, null);
        objectEncoderContext.d(S0, null);
        objectEncoderContext.d(T0, null);
        objectEncoderContext.d(U0, null);
        objectEncoderContext.d(V0, null);
        objectEncoderContext.d(W0, null);
        objectEncoderContext.d(X0, null);
        objectEncoderContext.d(Y0, null);
        objectEncoderContext.d(Z0, null);
        objectEncoderContext.d(a1, null);
        objectEncoderContext.d(b1, null);
        objectEncoderContext.d(c1, null);
    }
}
