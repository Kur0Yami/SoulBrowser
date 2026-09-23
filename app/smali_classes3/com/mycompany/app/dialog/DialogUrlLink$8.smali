.class Lcom/mycompany/app/dialog/DialogUrlLink$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$8;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$8;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iput v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->M()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->N()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iput v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->N()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iput v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->M()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
