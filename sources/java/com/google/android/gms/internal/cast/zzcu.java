package com.google.android.gms.internal.cast;

import android.content.Context;
import android.widget.ImageView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzcu extends UIController {
    public final ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9664c;
    public final String d;

    public zzcu(ImageView imageView, Context context) {
        this.b = imageView;
        this.f9664c = context.getString(R.string.cast_closed_captions);
        this.d = context.getString(R.string.cast_closed_captions_unavailable);
        imageView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void c() {
        this.b.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        this.b.setEnabled(true);
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setEnabled(false);
        this.f3529a = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r8 = this;
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r8.f3529a
            android.widget.ImageView r1 = r8.b
            r2 = 0
            if (r0 == 0) goto L4b
            boolean r3 = r0.j()
            if (r3 == 0) goto L4b
            com.google.android.gms.cast.MediaInfo r3 = r0.f()
            if (r3 != 0) goto L14
            goto L4b
        L14:
            java.util.List r3 = r3.j
            if (r3 == 0) goto L4b
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L4b
            java.util.Iterator r3 = r3.iterator()
            r4 = r2
        L23:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L4b
            java.lang.Object r5 = r3.next()
            com.google.android.gms.cast.MediaTrack r5 = (com.google.android.gms.cast.MediaTrack) r5
            int r5 = r5.f
            r6 = 2
            r7 = 1
            if (r5 != r6) goto L3a
            int r4 = r4 + 1
            if (r4 <= r7) goto L23
            goto L3c
        L3a:
            if (r5 != r7) goto L23
        L3c:
            boolean r0 = r0.p()
            if (r0 != 0) goto L4b
            r1.setEnabled(r7)
            java.lang.String r0 = r8.f9664c
            r1.setContentDescription(r0)
            return
        L4b:
            r1.setEnabled(r2)
            java.lang.String r0 = r8.d
            r1.setContentDescription(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzcu.f():void");
    }
}
