.class Lcom/mycompany/app/web/WebVideoFull$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$21;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$21;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/mycompany/app/video/VideoActivity;->Y0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$22;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$22;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$23;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$23;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$24;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$24;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    sget-object v0, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 61
    .line 62
    return-void
.end method
