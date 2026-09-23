.class Lcom/mycompany/app/dialog/DialogListGdrive$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListGdrive$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$6$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$6$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListGdrive$6;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->L:Lcom/mycompany/app/view/MyScrollBar;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
