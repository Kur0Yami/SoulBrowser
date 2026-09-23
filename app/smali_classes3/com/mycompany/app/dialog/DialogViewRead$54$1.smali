.class Lcom/mycompany/app/dialog/DialogViewRead$54$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$54;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$54;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$54$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$54;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$54$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$54;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$54;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->v2:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogViewRead;->v2:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$54;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->setReadHtml(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
