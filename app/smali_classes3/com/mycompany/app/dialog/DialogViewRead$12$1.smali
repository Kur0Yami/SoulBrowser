.class Lcom/mycompany/app/dialog/DialogViewRead$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$12$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$12$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$12;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$12;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->f0(Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$12;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->t1:Z

    .line 14
    .line 15
    return-void
.end method
