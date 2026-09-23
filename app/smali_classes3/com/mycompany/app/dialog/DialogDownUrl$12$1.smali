.class Lcom/mycompany/app/dialog/DialogDownUrl$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$12$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$12$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$12;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$12;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl$12;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl$12;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 28
    .line 29
    invoke-interface {v3, v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$12;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 36
    .line 37
    return-void
.end method
