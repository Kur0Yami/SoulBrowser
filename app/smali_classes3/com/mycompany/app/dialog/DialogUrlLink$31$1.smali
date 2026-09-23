.class Lcom/mycompany/app/dialog/DialogUrlLink$31$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink$31;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$31$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$31;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$31$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$31;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink$31;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Q0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Q0:Z

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 24
    .line 25
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->R0:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-interface/range {v2 .. v8}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
