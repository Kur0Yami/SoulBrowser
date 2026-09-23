.class Lcom/mycompany/app/dialog/DialogTabFind$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabFind$4$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabFind$4$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind$4$1$1;->c:Lcom/mycompany/app/dialog/DialogTabFind$4$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind$4$1$1;->c:Lcom/mycompany/app/dialog/DialogTabFind$4$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind$4$1;->c:Lcom/mycompany/app/dialog/DialogTabFind$4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind$4;->c:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->M(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
