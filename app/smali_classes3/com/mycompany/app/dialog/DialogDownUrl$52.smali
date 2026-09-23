.class Lcom/mycompany/app/dialog/DialogDownUrl$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$52;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$52;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->t2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    iput-wide p2, p4, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->u2:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    iput-wide p2, p4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->i:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->v2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 18
    .line 19
    if-eqz p4, :cond_2

    .line 20
    .line 21
    iput-wide p2, p4, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->f:J

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput-wide p2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->g0()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownUrl$52;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Q()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p2, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p2, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 18
    .line 19
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogDownUrl;->w2:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownUrl$52$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$52$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$52;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$52;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->Q()V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 18
    .line 19
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w2:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$52$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$52$2;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$52;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
