.class Lcom/mycompany/app/dialog/DialogDownUrl$29$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$29;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$29;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$29;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$29$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$29;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$29;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->o2:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L1:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 9
    .line 10
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->L(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L1:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->m1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v3, v2, v1, v5, v4}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 44
    .line 45
    return-void
.end method
