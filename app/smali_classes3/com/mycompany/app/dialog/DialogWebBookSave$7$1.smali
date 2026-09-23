.class Lcom/mycompany/app/dialog/DialogWebBookSave$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookSave$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookSave$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$7$1;->c:Lcom/mycompany/app/dialog/DialogWebBookSave$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$7$1;->c:Lcom/mycompany/app/dialog/DialogWebBookSave$7;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave$7;->c:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookSave;->s0:Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookSave;->H()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogWebBookSave;->C(Lcom/mycompany/app/dialog/DialogWebBookSave;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookSave$7;->c:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->u0:Z

    .line 20
    .line 21
    return-void
.end method
