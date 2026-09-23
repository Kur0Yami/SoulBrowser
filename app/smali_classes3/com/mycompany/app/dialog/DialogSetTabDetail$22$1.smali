.class Lcom/mycompany/app/dialog/DialogSetTabDetail$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$22;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22;->a:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 10
    .line 11
    invoke-static {v1, v3, v3}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B(Lcom/mycompany/app/dialog/DialogSetTabDetail;IZ)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B(Lcom/mycompany/app/dialog/DialogSetTabDetail;IZ)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$22;->b:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 21
    .line 22
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->p0:Z

    .line 23
    .line 24
    return-void
.end method
