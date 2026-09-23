.class Lcom/mycompany/app/dialog/DialogEditCmd$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$11$1;->c:Lcom/mycompany/app/dialog/DialogEditCmd$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd$11$1;->c:Lcom/mycompany/app/dialog/DialogEditCmd$11;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd$11;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditCmd;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v3, v1, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v2, v3, v4, v1, v1}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditCmd$11;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditCmd;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
