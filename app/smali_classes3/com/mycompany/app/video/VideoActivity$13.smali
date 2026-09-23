.class Lcom/mycompany/app/video/VideoActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$13;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$13;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 26
    .line 27
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->b0:Z

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->z1()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->R3:Z

    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$16;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Lcom/mycompany/app/video/VideoActivity$16;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    return-void
.end method
