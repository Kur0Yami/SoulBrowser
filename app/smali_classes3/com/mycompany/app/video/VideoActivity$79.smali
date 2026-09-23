.class Lcom/mycompany/app/video/VideoActivity$79;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$79;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$79;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 18
    .line 19
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$79$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$79$1;-><init>(Lcom/mycompany/app/video/VideoActivity$79;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method
