package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbk extends ArrayAdapter implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final Context f3576c;
    public int f;

    public zzbk(FragmentActivity fragmentActivity, ArrayList arrayList, int i) {
        super(fragmentActivity, R.layout.cast_tracks_chooser_dialog_row_layout, arrayList == null ? new ArrayList() : arrayList);
        this.f3576c = fragmentActivity;
        this.f = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x008d, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) == false) goto L24;
     */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = r7.f3576c
            if (r9 != 0) goto L32
            java.lang.String r9 = "layout_inflater"
            java.lang.Object r9 = r1.getSystemService(r9)
            android.view.LayoutInflater r9 = (android.view.LayoutInflater) r9
            java.lang.Object r9 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r9)
            android.view.LayoutInflater r9 = (android.view.LayoutInflater) r9
            int r2 = com.google.android.gms.cast.framework.R.layout.cast_tracks_chooser_dialog_row_layout
            android.view.View r9 = r9.inflate(r2, r10, r0)
            com.google.android.gms.cast.framework.media.zzbj r10 = new com.google.android.gms.cast.framework.media.zzbj
            int r2 = com.google.android.gms.cast.framework.R.id.text
            android.view.View r2 = r9.findViewById(r2)
            android.widget.TextView r2 = (android.widget.TextView) r2
            int r3 = com.google.android.gms.cast.framework.R.id.radio
            android.view.View r3 = r9.findViewById(r3)
            android.widget.RadioButton r3 = (android.widget.RadioButton) r3
            r10.<init>(r7, r2, r3)
            r9.setTag(r10)
            goto L3e
        L32:
            java.lang.Object r10 = r9.getTag()
            com.google.android.gms.cast.framework.media.zzbj r10 = (com.google.android.gms.cast.framework.media.zzbj) r10
            java.lang.Object r10 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r10)
            com.google.android.gms.cast.framework.media.zzbj r10 = (com.google.android.gms.cast.framework.media.zzbj) r10
        L3e:
            android.widget.RadioButton r2 = r10.b
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            r2.setTag(r3)
            int r3 = r7.f
            r4 = 1
            if (r3 != r8) goto L4e
            r3 = r4
            goto L4f
        L4e:
            r3 = r0
        L4f:
            r2.setChecked(r3)
            r9.setOnClickListener(r7)
            java.lang.Object r2 = r7.getItem(r8)
            com.google.android.gms.cast.MediaTrack r2 = (com.google.android.gms.cast.MediaTrack) r2
            java.lang.Object r2 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)
            com.google.android.gms.cast.MediaTrack r2 = (com.google.android.gms.cast.MediaTrack) r2
            java.lang.String r3 = r2.i
            java.lang.String r5 = r2.j
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L6d
            r5 = 0
            goto L71
        L6d:
            java.util.Locale r5 = java.util.Locale.forLanguageTag(r5)
        L71:
            boolean r6 = android.text.TextUtils.isEmpty(r3)
            if (r6 == 0) goto L9f
            int r2 = r2.k
            r3 = 2
            if (r2 != r3) goto L83
            int r8 = com.google.android.gms.cast.framework.R.string.cast_tracks_chooser_dialog_closed_captions
            java.lang.String r3 = r1.getString(r8)
            goto L9f
        L83:
            if (r5 == 0) goto L90
            java.lang.String r3 = r5.getDisplayLanguage()
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L90
            goto L9f
        L90:
            int r2 = com.google.android.gms.cast.framework.R.string.cast_tracks_chooser_dialog_default_track_name
            int r8 = r8 + r4
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r3 = new java.lang.Object[r4]
            r3[r0] = r8
            java.lang.String r3 = r1.getString(r2, r3)
        L9f:
            android.widget.TextView r8 = r10.f3575a
            r8.setText(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzbk.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f = ((Integer) Preconditions.checkNotNull(((zzbj) Preconditions.checkNotNull((zzbj) view.getTag())).b.getTag())).intValue();
        notifyDataSetChanged();
    }
}
