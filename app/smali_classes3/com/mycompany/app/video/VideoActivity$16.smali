.class Lcom/mycompany/app/video/VideoActivity$16;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$16;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$16;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->R3:Z

    .line 4
    .line 5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->b0:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->z1()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->Z0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 25
    .line 26
    new-instance v3, Lcom/mycompany/app/video/VideoActivity$17;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Lcom/mycompany/app/video/VideoActivity$17;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 35
    .line 36
    new-instance v3, Lcom/mycompany/app/video/VideoActivity$18;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Lcom/mycompany/app/video/VideoActivity$18;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 53
    .line 54
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 55
    .line 56
    const/4 v4, -0x1

    .line 57
    invoke-virtual {v2, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 58
    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method
