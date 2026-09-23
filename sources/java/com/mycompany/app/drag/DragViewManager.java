package com.mycompany.app.drag;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.mycompany.app.drag.DragListView;
import com.mycompany.app.fragment.FragmentDragView;

/* loaded from: classes3.dex */
public class DragViewManager implements DragListView.FloatViewManager {

    /* renamed from: c, reason: collision with root package name */
    public Bitmap f15608c;
    public ImageView f;
    public FragmentDragView g;

    @Override // com.mycompany.app.drag.DragListView.FloatViewManager
    public final void b(View view) {
        ((ImageView) view).setImageDrawable(null);
        Bitmap bitmap = this.f15608c;
        if (bitmap != null) {
            bitmap.recycle();
            this.f15608c = null;
        }
    }

    @Override // com.mycompany.app.drag.DragListView.FloatViewManager
    public final ImageView c(int i) {
        FragmentDragView fragmentDragView = this.g;
        View childAt = fragmentDragView.getChildAt((fragmentDragView.getHeaderViewsCount() + i) - fragmentDragView.getFirstVisiblePosition());
        if (childAt == null) {
            return null;
        }
        childAt.setPressed(false);
        this.f15608c = Bitmap.createBitmap(childAt.getWidth(), childAt.getHeight(), Bitmap.Config.ARGB_8888);
        childAt.draw(new Canvas(this.f15608c));
        if (this.f == null) {
            this.f = new ImageView(fragmentDragView.getContext());
        }
        this.f.setBackgroundColor(-16777216);
        this.f.setPaddingRelative(0, 0, 0, 0);
        this.f.setImageBitmap(this.f15608c);
        this.f.setLayoutParams(new ViewGroup.LayoutParams(childAt.getWidth(), childAt.getHeight()));
        return this.f;
    }

    @Override // com.mycompany.app.drag.DragListView.FloatViewManager
    public void a(Point point) {
    }
}
