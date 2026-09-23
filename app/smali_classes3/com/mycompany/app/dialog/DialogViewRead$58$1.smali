.class Lcom/mycompany/app/dialog/DialogViewRead$58$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$58;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$58;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$58$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$58;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$58$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$58;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$58;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->G0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
