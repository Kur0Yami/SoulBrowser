.class Lcom/mycompany/app/dialog/DialogDownUrl$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$14$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$14$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$14;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L1:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 12
    .line 13
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->f1:Z

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->m1:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v1, v3, v2, v6, v5}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 38
    .line 39
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 44
    .line 45
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->m1:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v3, v1, v2, v5, v4}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 51
    .line 52
    return-void
.end method
