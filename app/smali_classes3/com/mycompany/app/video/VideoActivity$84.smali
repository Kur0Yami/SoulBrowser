.class Lcom/mycompany/app/video/VideoActivity$84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$84;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$84;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoSubLayout;->f()V

    .line 18
    .line 19
    .line 20
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/video/VideoControl;->s(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/mycompany/app/dialog/DialogCapture;->q(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->o1()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->p1()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->n1()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->b1()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->q1()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->l1()V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
