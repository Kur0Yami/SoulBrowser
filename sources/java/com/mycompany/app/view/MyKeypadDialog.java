package com.mycompany.app.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import com.mycompany.app.editor.EditorActivity;
import com.mycompany.app.help.KeyHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyKeypadDialog extends MyDialogRelative {
    public int r;
    public EditorActivity s;
    public KeyHelper.KeyHelperListener t;
    public boolean u;

    @Override // com.mycompany.app.view.MyDialogRelative
    public final void c() {
        super.c();
        this.s = null;
        this.t = null;
    }

    @Override // com.mycompany.app.view.MyDialogRelative, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        View a0;
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        EditorActivity editorActivity = this.s;
        if (editorActivity != null && this.t != null && (a0 = editorActivity.a0()) != null) {
            Point s4 = MainUtil.s4(getContext());
            if (s4 == null) {
                i5 = 0;
            } else {
                i5 = s4.y;
            }
            Rect rect = new Rect();
            a0.getWindowVisibleDisplayFrame(rect);
            if ((i5 - rect.top) - i2 > this.r) {
                if (!this.u) {
                    this.u = true;
                    this.t.getClass();
                    return;
                } else {
                    this.t.getClass();
                    return;
                }
            }
            if (this.u) {
                this.u = false;
                this.t.b(false);
            } else {
                this.t.getClass();
            }
        }
    }
}
