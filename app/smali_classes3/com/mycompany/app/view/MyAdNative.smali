.class public Lcom/mycompany/app/view/MyAdNative;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyAdNative$AdNativeListener;
    }
.end annotation

# instance fields
.field public c:Z

.field public f:Z

.field public final g:Landroid/content/Context;

.field public h:Landroid/os/Handler;

.field public i:I

.field public j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

.field public m:Landroid/view/View;

.field public t:I

.field public u:J

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mycompany/app/view/MyAdNative;->c:Z

    iput-object p1, p0, Lcom/mycompany/app/view/MyAdNative;->g:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyAdNative;->h:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setDarkMode(Z)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m(ILcom/mycompany/app/view/MyAdNative$AdNativeListener;)V
    .locals 0

    iput p1, p0, Lcom/mycompany/app/view/MyAdNative;->t:I

    iput-object p2, p0, Lcom/mycompany/app/view/MyAdNative;->j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Z)V
    .locals 0

    return-void
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 0

    return-void
.end method
