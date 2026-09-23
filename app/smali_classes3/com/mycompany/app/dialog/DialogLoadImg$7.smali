.class Lcom/mycompany/app/dialog/DialogLoadImg$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLoadImg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$7;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$7;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->o0:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebLoadTask;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
