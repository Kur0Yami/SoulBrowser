.class Lcom/mycompany/app/view/MyFadeText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyFadeText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyFadeText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText$4;->c:Lcom/mycompany/app/view/MyFadeText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText$4;->c:Lcom/mycompany/app/view/MyFadeText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyFadeText;->s(Lcom/mycompany/app/view/MyFadeText;F)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->w:Lcom/mycompany/app/view/MyFadeListener;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-interface {v1, v2}, Lcom/mycompany/app/view/MyFadeListener;->a(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 50
    .line 51
    iget v0, v0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 52
    .line 53
    int-to-long v3, v0

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method
