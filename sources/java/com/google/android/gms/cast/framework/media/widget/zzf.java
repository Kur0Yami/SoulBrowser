package com.google.android.gms.cast.framework.media.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
final class zzf extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSeekBar f3550a;

    public /* synthetic */ zzf(CastSeekBar castSeekBar) {
        this.f3550a = castSeekBar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(SeekBar.class.getName());
        CastSeekBar castSeekBar = this.f3550a;
        accessibilityEvent.setItemCount(castSeekBar.f3542c.b);
        accessibilityEvent.setCurrentItemIndex(castSeekBar.getProgress());
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SeekBar.class.getName());
        if (view.isEnabled()) {
            accessibilityNodeInfo.addAction(ConstantsKt.DEFAULT_BLOCK_SIZE);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (view.isEnabled()) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i == 4096 || i == 8192) {
                CastSeekBar castSeekBar = this.f3550a;
                castSeekBar.f = true;
                zzd zzdVar = castSeekBar.j;
                if (zzdVar != null) {
                    zzdVar.b();
                }
                int i2 = castSeekBar.f3542c.b / 20;
                if (i == 8192) {
                    i2 = -i2;
                }
                castSeekBar.c(castSeekBar.getProgress() + i2);
                castSeekBar.f = false;
                zzd zzdVar2 = castSeekBar.j;
                if (zzdVar2 != null) {
                    zzdVar2.a(castSeekBar);
                }
            }
        }
        return false;
    }
}
