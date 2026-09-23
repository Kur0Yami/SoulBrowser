.class Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;
.super Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/motion/MaterialBackOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api34BackCallbackDelegate"
.end annotation


# virtual methods
.method public final c(Lcom/google/android/material/motion/MaterialBackHandler;)Landroid/window/OnBackInvokedCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate$1;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;Lcom/google/android/material/motion/MaterialBackHandler;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
