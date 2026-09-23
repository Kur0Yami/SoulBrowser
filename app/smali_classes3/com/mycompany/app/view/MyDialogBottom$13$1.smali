.class Lcom/mycompany/app/view/MyDialogBottom$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$13$1;->c:Lcom/mycompany/app/view/MyDialogBottom$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$13$1;->c:Lcom/mycompany/app/view/MyDialogBottom$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$13;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->v()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->k()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
