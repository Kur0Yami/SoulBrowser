package com.google.android.material.motion;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.BackEventCompat;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import j$.util.Objects;
import kotlin.time.DurationKt;

@RestrictTo
/* loaded from: classes3.dex */
public final class MaterialBackOrchestrator {

    /* renamed from: a, reason: collision with root package name */
    public final Api33BackCallbackDelegate f11831a;
    public final MaterialBackHandler b;

    /* renamed from: c, reason: collision with root package name */
    public final View f11832c;

    @RequiresApi
    /* loaded from: classes3.dex */
    public static class Api33BackCallbackDelegate implements BackCallbackDelegate {

        /* renamed from: a, reason: collision with root package name */
        public OnBackInvokedCallback f11833a;

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.BackCallbackDelegate
        @DoNotInline
        public void a(@NonNull MaterialBackHandler materialBackHandler, @NonNull View view, boolean z) {
            OnBackInvokedDispatcher findOnBackInvokedDispatcher;
            int i;
            if (this.f11833a != null || (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
                return;
            }
            OnBackInvokedCallback c2 = c(materialBackHandler);
            this.f11833a = c2;
            if (z) {
                i = DurationKt.NANOS_IN_MILLIS;
            } else {
                i = 0;
            }
            findOnBackInvokedDispatcher.registerOnBackInvokedCallback(i, c2);
        }

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.BackCallbackDelegate
        @DoNotInline
        public void b(@NonNull View view) {
            OnBackInvokedDispatcher findOnBackInvokedDispatcher;
            if (this.f11833a == null || (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
                return;
            }
            findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f11833a);
            this.f11833a = null;
        }

        public OnBackInvokedCallback c(final MaterialBackHandler materialBackHandler) {
            Objects.requireNonNull(materialBackHandler);
            return new OnBackInvokedCallback() { // from class: com.google.android.material.motion.a
                public final void onBackInvoked() {
                    MaterialBackHandler.this.d();
                }
            };
        }
    }

    @RequiresApi
    /* loaded from: classes3.dex */
    public static class Api34BackCallbackDelegate extends Api33BackCallbackDelegate {
        @Override // com.google.android.material.motion.MaterialBackOrchestrator.Api33BackCallbackDelegate
        public final OnBackInvokedCallback c(final MaterialBackHandler materialBackHandler) {
            return new OnBackAnimationCallback() { // from class: com.google.android.material.motion.MaterialBackOrchestrator.Api34BackCallbackDelegate.1
                public final void onBackCancelled() {
                    if (Api34BackCallbackDelegate.this.f11833a != null) {
                        materialBackHandler.f();
                    }
                }

                public final void onBackInvoked() {
                    materialBackHandler.d();
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    if (Api34BackCallbackDelegate.this.f11833a != null) {
                        materialBackHandler.c(new BackEventCompat(backEvent));
                    }
                }

                public final void onBackStarted(BackEvent backEvent) {
                    if (Api34BackCallbackDelegate.this.f11833a != null) {
                        materialBackHandler.b(new BackEventCompat(backEvent));
                    }
                }
            };
        }
    }

    /* loaded from: classes3.dex */
    public interface BackCallbackDelegate {
        void a(MaterialBackHandler materialBackHandler, View view, boolean z);

        void b(View view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MaterialBackOrchestrator(MaterialBackHandler materialBackHandler, View view) {
        Api33BackCallbackDelegate api33BackCallbackDelegate;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            api33BackCallbackDelegate = new Object();
        } else if (i >= 33) {
            api33BackCallbackDelegate = new Object();
        } else {
            api33BackCallbackDelegate = null;
        }
        this.f11831a = api33BackCallbackDelegate;
        this.b = materialBackHandler;
        this.f11832c = view;
    }

    public final void a(boolean z) {
        Api33BackCallbackDelegate api33BackCallbackDelegate = this.f11831a;
        if (api33BackCallbackDelegate != null) {
            api33BackCallbackDelegate.a(this.b, this.f11832c, z);
        }
    }

    public final void b() {
        Api33BackCallbackDelegate api33BackCallbackDelegate = this.f11831a;
        if (api33BackCallbackDelegate != null) {
            api33BackCallbackDelegate.b(this.f11832c);
        }
    }
}
