.class public final Lcom/google/android/material/motion/MaterialBackOrchestrator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;,
        Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;,
        Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

.field public final b:Lcom/google/android/material/motion/MaterialBackHandler;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x21

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->a:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->b:Lcom/google/android/material/motion/MaterialBackHandler;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->c:Landroid/view/View;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->a:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->b:Lcom/google/android/material/motion/MaterialBackHandler;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->c:Landroid/view/View;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;->a(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->a:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$BackCallbackDelegate;->b(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
