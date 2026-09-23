.class Lcom/mycompany/app/web/WebVideoFull$35;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$35;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$35;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 9
    .line 10
    iput v2, v0, Lcom/mycompany/app/web/WebVideoFull;->b1:I

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 17
    .line 18
    sget-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$36;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$36;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
