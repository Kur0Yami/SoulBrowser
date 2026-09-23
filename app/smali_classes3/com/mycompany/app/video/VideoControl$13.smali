.class Lcom/mycompany/app/video/VideoControl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$13;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$13;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->setTouchLock(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoControl;->setTouchLock(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->H()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
