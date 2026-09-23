.class Lcom/mycompany/app/dialog/DialogViewRead$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$39;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$39;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->i1:Landroid/animation/ValueAnimator;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->i1:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->x(Lcom/mycompany/app/dialog/DialogViewRead;F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->invalidate()V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->o:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->o:Z

    .line 30
    .line 31
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->h(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->D:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->w1:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$39$1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$39$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$39;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
