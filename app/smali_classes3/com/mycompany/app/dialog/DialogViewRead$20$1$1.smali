.class Lcom/mycompany/app/dialog/DialogViewRead$20$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$20$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$20$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$20$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$20$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$20$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$20$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$20$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$20;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$20;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->o(Lcom/mycompany/app/dialog/DialogViewRead;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$20;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->t1:Z

    .line 15
    .line 16
    return-void
.end method
