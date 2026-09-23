.class Lcom/mycompany/app/video/VideoActivity$12;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$12;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->j:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$12;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->z1()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->Y0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$13;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$13;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$14;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$14;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_3
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$15;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$15;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
