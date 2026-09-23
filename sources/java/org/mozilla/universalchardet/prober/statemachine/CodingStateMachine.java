package org.mozilla.universalchardet.prober.statemachine;

import kotlin.UByte;

/* loaded from: classes4.dex */
public class CodingStateMachine {

    /* renamed from: a, reason: collision with root package name */
    public final SMModel f22680a;
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f22681c;

    public CodingStateMachine(SMModel sMModel) {
        this.f22680a = sMModel;
    }

    public final int a(byte b) {
        int i = b & UByte.MAX_VALUE;
        SMModel sMModel = this.f22680a;
        int i2 = (sMModel.f22683a.f22682a[i >> 3] >> ((b & 7) << 2)) & 15;
        int i3 = this.b;
        if (i3 == 0) {
            this.f22681c = sMModel.d[i2];
        }
        PkgInt pkgInt = sMModel.f22684c;
        int i4 = (i3 * sMModel.b) + i2;
        int i5 = (pkgInt.f22682a[i4 >> 3] >> ((i4 & 7) << 2)) & 15;
        this.b = i5;
        return i5;
    }
}
