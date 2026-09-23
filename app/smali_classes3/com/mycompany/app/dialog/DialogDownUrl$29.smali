.class Lcom/mycompany/app/dialog/DialogDownUrl$29;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->L(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 22
    .line 23
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 24
    .line 25
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->c0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->e0()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

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
    iput p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->o2:I

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
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$29$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$29$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$29;)V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->L(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->u2:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->t2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->J(Lcom/mycompany/app/dialog/DialogDownUrl;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
