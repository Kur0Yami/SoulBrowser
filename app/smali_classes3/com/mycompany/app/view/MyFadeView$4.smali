.class Lcom/mycompany/app/view/MyFadeView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyFadeView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyFadeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView$4;->c:Lcom/mycompany/app/view/MyFadeView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView$4;->c:Lcom/mycompany/app/view/MyFadeView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyFadeView;->c(Lcom/mycompany/app/view/MyFadeView;F)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeView;->q:Lcom/mycompany/app/view/MyFadeListener;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {v1, v2}, Lcom/mycompany/app/view/MyFadeListener;->a(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 41
    .line 42
    iget v0, v0, Lcom/mycompany/app/view/MyFadeView;->h:I

    .line 43
    .line 44
    int-to-long v3, v0

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method
