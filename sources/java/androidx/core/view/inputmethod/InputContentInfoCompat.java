package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class InputContentInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public final InputContentInfoCompatImpl f849a;

    /* loaded from: classes.dex */
    public static final class InputContentInfoCompatBaseImpl implements InputContentInfoCompatImpl {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f851a;
        public final ClipDescription b;

        /* renamed from: c, reason: collision with root package name */
        public final Uri f852c;

        public InputContentInfoCompatBaseImpl(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f851a = uri;
            this.b = clipDescription;
            this.f852c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Uri a() {
            return this.f851a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final void b() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Uri c() {
            return this.f852c;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Object d() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final ClipDescription getDescription() {
            return this.b;
        }
    }

    /* loaded from: classes.dex */
    public interface InputContentInfoCompatImpl {
        Uri a();

        void b();

        Uri c();

        Object d();

        ClipDescription getDescription();
    }

    public InputContentInfoCompat(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f849a = new InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.f849a = new InputContentInfoCompatBaseImpl(uri, clipDescription, uri2);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class InputContentInfoCompatApi25Impl implements InputContentInfoCompatImpl {

        /* renamed from: a, reason: collision with root package name */
        public final InputContentInfo f850a;

        public InputContentInfoCompatApi25Impl(Object obj) {
            this.f850a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Uri a() {
            return this.f850a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final void b() {
            this.f850a.requestPermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Uri c() {
            return this.f850a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final Object d() {
            return this.f850a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public final ClipDescription getDescription() {
            return this.f850a.getDescription();
        }

        public InputContentInfoCompatApi25Impl(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f850a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    public InputContentInfoCompat(InputContentInfoCompatApi25Impl inputContentInfoCompatApi25Impl) {
        this.f849a = inputContentInfoCompatApi25Impl;
    }
}
