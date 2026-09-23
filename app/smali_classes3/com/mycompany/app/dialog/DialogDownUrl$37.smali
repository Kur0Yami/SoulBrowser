.class Lcom/mycompany/app/dialog/DialogDownUrl$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$37;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$37;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->X(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$37;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

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
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 15
    .line 16
    iput p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q2:I

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$37$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$37$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$37;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$37;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->B(Lcom/mycompany/app/dialog/DialogDownUrl;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->t2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->u2:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->J(Lcom/mycompany/app/dialog/DialogDownUrl;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
