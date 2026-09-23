.class Lcom/mycompany/app/dialog/DialogEditAuth$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditAuth;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditAuth$8;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditAuth$8;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->j0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->j0:Z

    .line 15
    .line 16
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditAuth$8$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogEditAuth$8$1;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth$8;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
