package com.google.android.gms.internal.cast;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzdx extends zzdr {

    /* renamed from: c, reason: collision with root package name */
    public final RelativeLayout f9677c;
    public final TextView d;
    public final CastSeekBar e;
    public final com.google.android.gms.cast.framework.media.uicontroller.zza f;

    public zzdx(RelativeLayout relativeLayout, CastSeekBar castSeekBar, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.b = true;
        this.f9677c = relativeLayout;
        TextView textView = (TextView) relativeLayout.findViewById(R.id.tooltip);
        this.d = textView;
        this.e = castSeekBar;
        this.f = zzaVar;
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarTooltipBackgroundColor, 0);
        obtainStyledAttributes.recycle();
        textView.getBackground().setColorFilter(textView.getContext().getResources().getColor(resourceId), PorterDuff.Mode.SRC_IN);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        h();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        h();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.f3529a = null;
        h();
    }

    @Override // com.google.android.gms.internal.cast.zzdr
    public final void f(long j) {
        h();
    }

    @Override // com.google.android.gms.internal.cast.zzdr
    public final void g(boolean z) {
        this.b = z;
        h();
    }

    public final void h() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        RelativeLayout relativeLayout = this.f9677c;
        if (remoteMediaClient != null && remoteMediaClient.j() && !this.b) {
            relativeLayout.setVisibility(0);
            CastSeekBar castSeekBar = this.e;
            long progress = castSeekBar.getProgress();
            com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.f;
            String k = zzaVar.k(zzaVar.f() + progress);
            TextView textView = this.d;
            textView.setText(k);
            int measuredWidth = (castSeekBar.getMeasuredWidth() - castSeekBar.getPaddingLeft()) - castSeekBar.getPaddingRight();
            textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, IntCompanionObject.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredWidth2 = textView.getMeasuredWidth();
            int min = Math.min(Math.max(0, ((int) ((castSeekBar.getProgress() / castSeekBar.getMaxProgress()) * measuredWidth)) - (measuredWidth2 / 2)), measuredWidth - measuredWidth2);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.leftMargin = min;
            textView.setLayoutParams(layoutParams);
            return;
        }
        relativeLayout.setVisibility(8);
    }
}
